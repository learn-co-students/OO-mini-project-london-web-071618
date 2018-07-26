class Recipe
  attr_accessor :name, :join

  @@all = []
  def initialize(name)
    @name=name
    @@all << self
  end

  def self.all
    @@all
  end

  def add_ingredients(arr_of_ingredients)
    arr_of_ingredients.each do |x|
      RecipeIngredient.new(self, x)
    end
  end

  def ingredients
    found_data = RecipeIngredient.all.select {|x| x.recipe == self}
    found_data.map {|x| x.ingredient}
  end

  def self.recipe_most_popular
    RecipeCard.all.max_by {|obj| obj.recipe.name}.recipe
  end

  def users #adham Done
    find_user = RecipeCard.all.select {|r| r.recipe == self }
    find_user.map {|x| x.user}.uniq
  end

  def allergens #ritz
    find_ingredients = self.ingredients
    find_allergens = Allergen.all.map {|obj| obj.ingredient}
    find_allergens & find_ingredients
  end
end
