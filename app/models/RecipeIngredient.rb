class RecipeIngredient
  attr_accessor :recipe, :ingredient

  @@all = []

  def initialize(recipe, ingredient)
    @recipe = recipe
    @ingredient = ingredient
    @@all << self
  end

  def self.all
    @@all
  end
end


# counts = Hash.new
# RecipeCard.all.each do |recipecard|
#   counts[recipecard.recipe] = 0
# end
# RecipeCard.all.each do |recipecard|
#   counts[recipecard.recipe] += 1
# end
