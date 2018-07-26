class User
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def recipes
    cards = RecipeCard.all.select {|recipe_card| recipe_card.user == self}
    cards.map {|card| card.recipe}
  end

  def add_recipe_card(recipe, date, rating)
    RecipeCard.new(self, recipe, date, rating)
  end

  def declare_allergen(ingredient)
    Allergen.new(self, ingredient)
  end

  def allergens
    allergen_inst = Allergen.all.select{|allergen| allergen.user == self}
    allergen_inst.map {|allergen_inst| allergen_inst.ingredient}
  end

  def top_three_recipes
    cards = RecipeCard.all.select {|recipe_card| recipe_card.user == self}
    grouped_by_recipe = cards.group_by{|recipe_card| recipe_card.recipe}
    sorted = grouped_by_recipe.sort_by {|recipe, card| card[0].rating}.reverse
    top_three = []
    (0..2).to_a.each do |i|
      if sorted[i]
        top_three << sorted[i][0]
      end

    end
    # if sorted[0]
    #   top_three << sorted[0][0]
    # end
    # if sorted[1]
    #   top_three << sorted[1][0]
    # end
    # if sorted[2]
    #   top_three << sorted[2][0]
    # end
    top_three
  end

  def most_recent_recipe
    recipes.last
  end

  def safe_recipes
    unsafe_recipe_ingredient = RecipeIngredient.all.select do |recipe_ingredient|
      self.allergens.include?(recipe_ingredient.ingredient)
    end
    unsafe_recipes = unsafe_recipe_ingredient.map {|recipe_ingredient| recipe_ingredient.recipe}

    safe_recipe_ingredient = RecipeIngredient.all.select do |recipe_ingredient|
      unless unsafe_recipes.include?(recipe_ingredient.recipe)
        recipe_ingredient.recipe
      end
    end
    safe_recipes = []
    safe_recipe_ingredient.each do |recipe_ingredient|
      unless safe_recipes.include?(recipe_ingredient.recipe)
        safe_recipes << recipe_ingredient.recipe
      end
    end
    safe_recipes
  end
end
