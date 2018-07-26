require_relative '../config/environment.rb'

luoana = User.new("Luoana")
sarah = User.new("Sarah")
jo = User.new("Jo")

goulash = Recipe.new("Goulash")
fries = Recipe.new("Fries")
omlette = Recipe.new("Omlette")
jam = Recipe.new("Jam")

eggs = Ingredient.new("eggs")
paprika = Ingredient.new("paprika")
potatoes = Ingredient.new("potatoes")
cheese = Ingredient.new("cheese")
beef = Ingredient.new("beef")
oil = Ingredient.new("oil")

luoana_omlette = RecipeCard.new(luoana, omlette, "jan 23", 4)
jo_goulash = RecipeCard.new(jo, goulash, "feb 12", 5)
jo_fries = RecipeCard.new(jo, fries, "jul 4", 2)
luoana_fries = RecipeCard.new(luoana, fries, "dec 21", 3)

omlette_eggs = RecipeIngredient.new(omlette, eggs)
omlette_cheese = RecipeIngredient.new(omlette, cheese)
omlette_oil = RecipeIngredient.new(omlette, oil)
goulash_paprika = RecipeIngredient.new(goulash, paprika)
goulash_beef = RecipeIngredient.new(goulash, beef)
fries_potatoes = RecipeIngredient.new(fries, potatoes)
fries_oil = RecipeIngredient.new(fries, oil)

jo_cheese = Allergen.new(jo, cheese)
sarah_oil = Allergen.new(sarah, oil)
sarah_cheese = Allergen.new(sarah, cheese)
luoana_cheese = Allergen.new(luoana, cheese)

jo.add_recipe_card(omlette, "jan 30", 4)
jo.add_recipe_card(jam, "nov 3", 4)


binding.pry
