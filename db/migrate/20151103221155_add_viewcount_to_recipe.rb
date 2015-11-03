class AddViewcountToRecipe < ActiveRecord::Migration
  def change
    add_column :recipes, :viewcount, :integer
  end
end
