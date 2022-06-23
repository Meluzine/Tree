class AddTreeIdToAdoptions < ActiveRecord::Migration[6.1]
  def change
    add_reference :adoptions, :tree, null: false, foreign_key: true
  end
end
