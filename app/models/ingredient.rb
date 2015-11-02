class Ingredient < ActiveRecord::Base
  # has_and_belongs_to_many :recipes
  has_many :quantities
  has_many :recipes, through: :quantities

  validates :name, length: { minimum: 2}
  validates :name, uniqueness: true
end