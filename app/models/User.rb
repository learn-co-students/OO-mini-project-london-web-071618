class User
  @@all = []
  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def recipes
    own_recipes = RecipeCard.all.select {|x| x.user == self}
  end

  def add_recipe_card(recipe, date, rating)
    RecipeCard.new(recipe, self, date, rating)
  end

  def declare_allergen(ingredient)
    Allergen.new(self, ingredient)
  end

  def allergens
    list_of_allergens = Allergen.all.select {|x| x.user == self}
    list_of_allergens.map {|x| x.ingredient}
  end

  def top_three_recipes
    sorted_by_rating = recipes.sort_by{|obj| obj.rating}.reverse
    sorted_by_rating.slice(0, 3)
  end

  def most_recent_recipe
    recipes[-1]
  end

  def safe_recipes #ritz
    Recipe.all.select {|recipe| (recipe.ingredients & self.allergens).empty?}
  end

end
