class AdoptionsController < ApplicationController
  before_action :set_tree, only: [:update, :edit, :show]

  def index
    @adoptions = Adoption.all

  end

  def new
    @tree = Tree.find(params[:tree_id])
    @adoption = Adoption.new
  end

 def show
 end

  def create
    @user = current_user
    @adoption = Adoption.new(adoption_params)
    @tree = Tree.find(params[:tree_id])
    @adoption.user = @user
    @adoption.tree = @tree
    if @adoption.save
      redirect_to root_path(@adoption)
    else
      render :new
    end
  end


  private

  def adoption_params
    params.require(:adoption).permit(:starts_at, :ends_at, :name)
  end

  def set_tree
    @tree = Tree.find(params[:id])
  end

end
