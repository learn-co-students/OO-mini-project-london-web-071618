require 'pry'
require_relative './recipe'
require_relative './user'
require_relative './recipecard'
require_relative './ingredient'
require_relative './recipeingredient'
require_relative './allergen'


# Users
brooke = User.new("Brooke")
ramona = User.new("Ramona")
stacey = User.new("Stacey")
# Recipes
pasta = Recipe.new("Pasta")
sushi=Recipe.new("Sushi")
dhal= Recipe.new("Dhal")

# RecipeCards
brooke_pasta = RecipeCard.new(brooke, pasta, "May 17th", 6)
ramona_dhal=RecipeCard.new(ramona, dhal, "June 19th", 3)
stacey_pasta=RecipeCard.new(stacey, dhal, "July 4th", 5)
# Testing methods
# brooke.recipecard

#ingredients
potatos = Ingredient.new("Potatos")
rice = Ingredient.new("Rice")
wheat=Ingredient.new("Wheat")
milk = Ingredient.new("Milk")
gluten = Ingredient.new("Gluten")

#RecipeIngredient
#ramona_potatos=
#allergen
ramona_gluten = Allergen.new(ramona, pasta, gluten)
brooke_wheat = Allergen.new(brooke, pasta, wheat)
stacey_milk= Allergen.new(stacey, dhal, milk)
ramona_milk = Allergen.new(ramona, dhal, milk)


#recipeIngredients

binding.pry
