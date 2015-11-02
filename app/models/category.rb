class Category < ActiveRecord::Base
  has_many :recipes

  validates :name, length: { minimum: 2}
  validates :name, uniqueness: true
end
