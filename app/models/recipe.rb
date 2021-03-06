class Recipe < ActiveRecord::Base
  belongs_to :category
  # has_and_belongs_to_many :ingredients
  has_many :quantities
  has_many :ingredients, through: :quantities

  validates :name, length: { minimum: 2}
  validates :name, uniqueness: true

  mount_uploader :recipe_image, RecipeImageUploader
end
