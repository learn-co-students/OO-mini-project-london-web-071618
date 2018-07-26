class RecipeIngredient
  attr_accessor :recipe, :ingredients

  @@all = []

  def initialize(recipe)
    @recipe = recipe
    @ingredients = []
    @@all << self
  end

  def self.all
    @@all
  end
end
