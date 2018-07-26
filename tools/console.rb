require_relative '../config/environment.rb'


fried_rice = Recipe.new("fried rice")
cottage_pie = Recipe.new("cottage pie")
roast_beef = Recipe.new("roast beef")


sushi = Recipe.new("sushi")
oil = Ingredient.new("oil")
rice = Ingredient.new("rice")
potatoes = Ingredient.new("potatoes")
meat = Ingredient.new("meat")
fish = Ingredient.new("fish")



ingreds = [oil, rice]
pie_ingreds = [meat, potatoes]
sushi_ingreds = [fish, oil]
fried_rice.add_ingredients(ingreds)
sushi.add_ingredients(sushi_ingreds)
cottage_pie.add_ingredients(pie_ingreds)
adham = User.new("adham")
ritz = User.new("ritz")
adham.add_recipe_card(fried_rice, "friday", 5)
adham.add_recipe_card(cottage_pie, "monday", 4)
adham.add_recipe_card(roast_beef, "saturday", 2)
adham.add_recipe_card(sushi, "sunday", 5)
adham.add_recipe_card(sushi, "sunday", 5)
adham.add_recipe_card(sushi, "sunday", 5)
ritz.add_recipe_card(sushi, "sunday", 5)
ritz.add_recipe_card(sushi, "sunday", 5)
ritz.add_recipe_card(sushi, "sunday", 5)
ritz.add_recipe_card(sushi, "sunday", 5)
ritz.declare_allergen(oil)
adham.declare_allergen(rice)
adham.declare_allergen(potatoes)
ritz.declare_allergen(fish)
ritz.declare_allergen(potatoes)
adham.top_three_recipes

binding.pry
