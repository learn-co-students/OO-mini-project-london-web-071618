
require 'pry'

require_relative '../config/environment.rb'

soup_recipe = Recipe.new("soup")
pasta_recipe = Recipe.new("pasta")
bread_recipe = Recipe.new("bread")
sandwich_recipe = Recipe.new("sandwich")
lasagne_recipe = Recipe.new("lasagne")
cake_recipe = Recipe.new("cake")
salad_recipe = Recipe.new("salad")


casey = User.new("casey")
maduri = User.new("maduri")

walnut = Ingredient.new("walnut")
cheese = Ingredient.new("cheese")
wheat = Ingredient.new("wheat")
lettuce = Ingredient.new("lettuce")
gluten = Ingredient.new("gluten")
milk = Ingredient.new("milk")
chocolate = Ingredient.new("chocolate")
flour = Ingredient.new("flour")

nut_allergy = Allergen.new("nut_allergy", casey, walnut)
wheat_allergy = Allergen.new("wheat_allergy", maduri, wheat)
gluten_allergy = Allergen.new("gluten_allergy", maduri, gluten)

soup_recipecard = RecipeCard.new("soup_recipecard", casey, soup_recipe, 7, "23/10/2018")
salad_recipecard = RecipeCard.new("salad_recipecard", casey, salad_recipe, 3, "12/03/2018")
cake_recipecard = RecipeCard.new("cake_recipecard", casey, cake_recipe, 4, "10/09/2018")
lasagne_recipecard = RecipeCard.new("lasange_recipecard", casey, lasagne_recipe, 10, "19/07/2014")

lettuce_ingredient = RecipeIngredient.new("soup_recipe_ingredient", lettuce, soup_recipe)
walnut_ingredient = RecipeIngredient.new("soup_recipe_ingredient", walnut, soup_recipe)

ingredients_array = ["salt","pepper","salsa"]

binding.pry
