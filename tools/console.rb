require_relative '../config/environment.rb'


fried_rice = Recipe.new("fried rice")
cottage_pie = Recipe.new("cottage pie")
roast_beef = Recipe.new("roast beef")


sushi = Recipe.new("sushi")
oil = Ingredient.new("oil")
rice = Ingredient.new("rice")
potatoes = Ingredient.new("potatoes")
meat = Ingredient.new("meat")



ingreds = [oil, rice]
pie_ingreds = [meat, potatoes]
fried_rice.add_ingredients(ingreds)
cottage_pie.add_ingredients(pie_ingreds)
roast_beef.add_ingredients([meat])
sushi.add_ingredients([rice])
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
ritz.declare_allergen(rice)
adham.declare_allergen(potatoes)
adham.declare_allergen(meat)
adham.declare_allergen(oil)
ritz.declare_allergen(meat)

adham.top_three_recipes

binding.pry
