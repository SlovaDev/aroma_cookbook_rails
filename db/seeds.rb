# Set up default cuisines
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
