require 'pry'
require_relative '../app/models/Allergen'
require_relative '../app/models/Ingredient'
require_relative '../app/models/Recipe'
require_relative '../app/models/RecipeCard'
require_relative '../app/models/RecipeIngredient'
require_relative '../app/models/User'

# USERS
sarah = User.new("sarah")
maduri = User.new("maduri")
jo = User.new("jo")

#RECIPES
bread = Recipe.new("bread")
spaghetti = Recipe.new("spaghetti")
cherry_pie = Recipe.new("cherry_pie")

#RECIPECARDS
spaghetti_card= Recipe_card.new("spaghetti_recipe_card", jo, spaghetti, '1/1/19', 5)
bread_card= Recipe_card.new("bread_card", jo, bread, '1/4/19', 5)
bread_card= Recipe_card.new("bread_card", maduri, bread, '5/4/19', 5)
# cherry_pie_card = Recipe_card.new("cherry_pie_card", jo, cherry_pie, '5/4/19', 4)

#INGREDIENTS
flour = Ingredient.new("flour")
water = Ingredient.new("water")
yeast = Ingredient.new("yeast")
salt = Ingredient.new("salt")
cherry = Ingredient.new("cherry")
tomato = Ingredient.new("tomato")


#RECIPEINGREDIENT
recipe_ingredient_flour = RecipeIngredient.new("bread_ingredient_flour", bread, flour)
recipe_ingredient_flour = RecipeIngredient.new("bread_ingredient_flour", bread, flour)
recipe_ingredient_water = RecipeIngredient.new("bread_ingredient_water", bread, water)
recipe_ingredient_cherry = RecipeIngredient.new("recipe_ingredient_cherry", cherry_pie, cherry)
recipe_ingredient_tomato = RecipeIngredient.new("recipe_ingredient_tomato", spaghetti, tomato)

#Allergen
wheat_allergy = Allergen.new("wheat_allergy", jo, flour)

breads_ingredients = [yeast, salt]

binding.pry
