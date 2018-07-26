class Recipe
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.most_popular
    grouped = RecipeCard.all.group_by {|recipe_card|recipe_card.recipe}
    counted = grouped.map {|recipe, recipe_card| [recipe, recipe_card.count]}
    max_number = counted.map {|element| element[1]}.max
    most_popular_recipe = counted.find {|element| element[1] == max_number}[0]
  end

  def users
    cards = RecipeCard.all.select {|recipe_card| recipe_card.recipe == self}
    cards.map {|card| card.user}
  end

  def ingredients
    recipe_ing = RecipeIngredient.all.select {|recipe_ing| recipe_ing.recipe == self}
    recipe_ing.map {|recipe_ing| recipe_ing.ingredient}
  end


  # def allergens
  #   ingredients.select do |ingredient|
  #     Allergen.all.ingredient.include?(ingredient)
  #   end
  # end

  def add_ingredients(ingredients)
    ingredients.each do |ingredient|
      RecipeIngredient.new(self, ingredient)
    end
  end
end
