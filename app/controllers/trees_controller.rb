class TreesController < ApplicationController
  before_action :set_tree, only: [:update, :edit, :show, :destroy]

  def index
    @trees = Tree.all

  end

  def new
    @tree = Tree.new
  end

  def show
  end

  def create
    @tree = Tree.new(tree_params)
    @tree.user = current_user
    if @tree.save
      redirect_to trees_path(@tree)
    else
      render :new
    end
  end

  def edit

  end

  def update
    @tree.user = current_user
    @tree.update(tree_params)
    redirect_to tree_path(@tree)
  end


  def destroy
    @tree = Tree.find(params[:id])
    @tree.destroy
    redirect_to trees_path(@tree)
  end

  private

  def set_tree
    @tree = Tree.find(params[:id])
  end

  def tree_params
    params.require(:tree).permit(:user_id, :name, :description, :price_per_year, :quantity_by_year, :fruits, :address)

  end
end
