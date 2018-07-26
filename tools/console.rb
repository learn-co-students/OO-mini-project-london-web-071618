require_relative '../config/environment.rb'


fried_rice = Recipe.new("fried rice")
oil = Ingredient.new("oil")
rice = Ingredient.new("rice")
ingreds = ["carrots", "beef"]
fried_rice.add_ingredients(ingreds)

binding.pry
