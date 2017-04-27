# Set up default cuisines
include Generator
default_cuisines = Cuisine.create([
  { name: "Appetizer" },
  { name: "Bread" },
  { name: "Breakfast" },
  { name: "Soup" },
  { name: "Entree" },
  { name: "Salad" },
  { name: "Dessert" },
  { name: "Drink" },
  { name: "Miscellaneous" },
])
