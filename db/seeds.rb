# Set up default cuisines
require 'faker'
include Generator

default_cuisines = Cuisine.create([
  {
  	name: "Appetizer",
  	image_url: "appetizer.svg"
  },
  {
  	name: "Entree",
  	image_url: "entree.svg"
  },
  {
  	name: "Dessert",
  	image_url: "dessert.svg"
  },
  {
  	name: "Bread",
  	image_url: "bread.svg"
  },
  {
  	name: "Soup",
  	image_url: "soup.svg"
  },
  {
  	name: "Salad",
  	image_url: "salad.svg"
  },
  {
  	name: "Breakfast",
  	image_url: "breakfast.svg"
  },
  {
  	name: "Drink",
  	image_url: "drink.svg"
  },
  {
  	name: "Miscellaneous",
  	image_url: "misc.svg"
  },
])

# Set ENV to avoid corrupting production database with development seeds
if ENV=["recipes"]

  50.times do
    Recipe.create!(
        name: Faker::Food.ingredient,
        cuisine_id: rand(1..9),
        user_id: 1
      )
  end
  puts "50 Recipies created"

  75.times do
    Direction.create!(
      direction: Faker::Lorem.sentence(10, true),
      recipe_id: rand(1..50)
    )
  end
  puts "Created 75 Directions"

  150.times do
    Ingredient.create!(
      item: Faker::Food.ingredient,
      quantity: rand(1..9).to_f,
      measure: "oz",
      recipe_id: rand(1..50)
    )
  end
  puts "150 Ingredients created."
end
