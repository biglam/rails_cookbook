# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Category.delete_all
Recipe.delete_all

breakfast = Category.create!(name: 'Breakfast')
starter = Category.create!(name: 'Starters')
lunch = Category.create!(name: 'Lunch')
dinner = Category.create!(name: 'Dinner')
dessert = Category.create!(name: 'Dessert')

Recipe.create!(name: 'Chicken Soup', instructions: 'Put all ingredients in a pot. Boil it. Eat it.', category_id: starter.id)
Recipe.create!(name: 'Porridge', instructions: 'Cook oats in milk or water, with salt or sugar.', category_id: breakfast.id)
Recipe.create!(name: 'Sandwich', instructions: 'Chop up bread. Put stuff in. Eat', category_id: lunch.id)
Recipe.create!(name: 'Pea Soup', instructions: 'Put peas in water. Boil. Eat', category_id: starter.id)
Recipe.create!(name: 'Steak Bake', instructions: 'Go to Greggs. Buy one', category_id: lunch.id)
Recipe.create!(name: 'Steak', instructions: 'Cook it as required', category_id: dinner.id)
Recipe.create!(name: 'Steak Pie', instructions: 'Put steak in pastry. Cook. Eat', category_id: dinner.id)
Recipe.create!(name: 'Angel Delight', instructions: 'Put in milk. Whisk it. Eat it.', category_id: dessert.id)
Recipe.create!(name: 'Rice pudding', instructions: 'Open tin. Heat up. Eat.', category_id: starter.id)