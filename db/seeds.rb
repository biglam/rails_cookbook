# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Category.delete_all
Recipe.delete_all
Ingredient.delete_all

breakfast = Category.create!(name: 'Breakfast')
starter = Category.create!(name: 'Starters')
lunch = Category.create!(name: 'Lunch')
dinner = Category.create!(name: 'Dinner')
dessert = Category.create!(name: 'Dessert')

chicken_soup = Recipe.create!(name: 'Chicken Soup', instructions: 'Put all ingredients in a pot. Boil it. Eat it.', category_id: starter.id)
porridge = Recipe.create!(name: 'Porridge', instructions: 'Cook oats in milk or water, with salt or sugar.', category_id: breakfast.id)
sandwich = Recipe.create!(name: 'Sandwich', instructions: 'Chop up bread. Put stuff in. Eat', category_id: lunch.id)
peasoup = Recipe.create!(name: 'Pea Soup', instructions: 'Put peas in water. Boil. Eat', category_id: starter.id)
steakbake = Recipe.create!(name: 'Steak Bake', instructions: 'Go to Greggs. Buy one', category_id: lunch.id)
steak = Recipe.create!(name: 'Steak', instructions: 'Cook it as required', category_id: dinner.id)
curry = Recipe.create!(name: 'Curry', instructions: 'Cook and eat with rice.', category_id: dinner.id)
steakpie = Recipe.create!(name: 'Steak Pie', instructions: 'Put steak in pastry. Cook. Eat', category_id: dinner.id)
angeldelight = Recipe.create!(name: 'Angel Delight', instructions: 'Put in milk. Whisk it. Eat it.', category_id: dessert.id)
ricepudding = Recipe.create!(name: 'Rice pudding', instructions: 'Open tin. Heat up. Eat.', category_id: starter.id)

chicken = Ingredient.create!(name: 'Chicken')
rice = Ingredient.create!(name: 'Rice')
water = Ingredient.create!(name: 'Water')
milk = Ingredient.create!(name: 'Milk')
ham = Ingredient.create!(name: 'Ham')
bread = Ingredient.create!(name: 'Bread')
peas = Ingredient.create!(name: 'Peas')
beef = Ingredient.create!(name: 'Beef')
pastry = Ingredient.create!(name: 'Pastry')

# chicken_soup.quantities.create!(ingredient: i, quantity: 'some')
chicken_soup.quantities.create!(ingredient: chicken, quantity: 'some')
chicken_soup.quantities.create!(ingredient: water, quantity: 'some')
porridge.quantities.create!(ingredient: milk, quantity: 'some')
porridge.quantities.create!(ingredient: water, quantity: 'some')
sandwich.quantities.create!(ingredient: chicken, quantity: 'some')
sandwich.quantities.create!(ingredient: ham, quantity: 'some')
sandwich.quantities.create!(ingredient: bread, quantity: 'some')
peasoup.quantities.create!(ingredient: water, quantity: 'some')
peasoup.quantities.create!(ingredient: peas, quantity: 'some')
steakbake.quantities.create!(ingredient: beef, quantity: 'some')
steakbake.quantities.create!(ingredient: pastry, quantity: 'some')
steak.quantities.create!(ingredient: beef, quantity: 'some')
curry.quantities.create!(ingredient: rice, quantity: 'some')
curry.quantities.create!(ingredient: chicken, quantity: 'some')
curry.quantities.create!(ingredient: beef, quantity: 'some')
steakpie.quantities.create!(ingredient: pastry, quantity: 'some')
steakpie.quantities.create!(ingredient: beef, quantity: 'some')
angeldelight.quantities.create!(ingredient: milk, quantity: 'some')
ricepudding.quantities.create!(ingredient: rice, quantity: 'some')
ricepudding.quantities.create!(ingredient: rice, quantity: 'some')