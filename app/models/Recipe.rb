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

  def all_recipe_cards
    #get all the recipe cards that belong to this instance
    Recipe_card.all.select {|recipecard| recipecard.recipe == self }
  end

  def self.most_popular
    #return recipe has the highest number of users, we use recipecards to check as it holds info about recipe and users.
    # hash = {}
    # Recipe_card.all.each { |recipecard| hash[recipecard.name] == nil ? hash[recipecard.name] = 1 : hash[recipecard.name] += 1 }
      # hash.max_by{|k,v| v}.first

    hash = {}
    Recipe_card.all.each do |recipecard|
      if hash[recipecard.name] == nil
         hash[recipecard.name] = 1
      else
        hash[recipecard.name] += 1
      end
    end
    hash
        hash.max_by{|k,v| v}.first

  end

  def users
    # all_recipe_cards_for_this_recipe = Recipe_card.all.select {|recipecard| recipecard.recipe == self }
    # all_recipe_cards_for_this_recipe.map {|recipecard| recipecard.user}
    self.all_recipe_cards.map {|recipecard| recipecard.user}
  end

  def ingredients
    all_ingredients_this_recipe = RecipeIngredient.all.select {|recipeingredient| recipeingredient.recipe == self }
    all_ingredients_this_recipe.map {|recipeingredient| recipeingredient.ingredient}
  end

  def allergens
    ingredients = self.ingredients
    all_allergens_ingredients = Allergen.all.map{|allergen| allergen.ingredient}

    matching = ingredients & all_allergens_ingredients
    matching
  end

  def add_ingredients(array_ingredients_instances)
    array_ingredients_instances.each{|ingredient| RecipeIngredient.new(ingredient.name, self, ingredient)}
    # RecipeIngredient.new(name, self, ingredient)
  end

end
