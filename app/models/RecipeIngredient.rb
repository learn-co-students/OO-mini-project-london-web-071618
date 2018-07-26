class RecipeIngredient

  attr_accessor :name, :recipe, :ingredient

  @@all = []

  def initialize(name, recipe, ingredient)
    @name = name
    @recipe = recipe
    @ingredient = ingredient
    @@all << self
  end

  def self.all
    @@all
  end

end
