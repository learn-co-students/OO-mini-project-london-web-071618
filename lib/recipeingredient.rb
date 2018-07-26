class RecipeIngredient
  attr_accessor :recipe, :ingredient
  @@all = []

  def initialize(recipe, ingredient)

    @recipe=recipe
    @ingredient = ingredient
    @@all << self
  end


#RecipeIngredient.all should return all of the RecipeIngredient instances
  def self.all
    @@all
  end

  
end
