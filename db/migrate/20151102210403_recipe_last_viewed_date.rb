class RecipeLastViewedDate < ActiveRecord::Migration
  def up
    add_column :recipes, :last_viewing, :datetime
  end

  def down
    remove_column :recipes, :last_viewing
  end
end
