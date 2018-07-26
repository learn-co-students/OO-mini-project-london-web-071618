require 'pry'
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

  #
  def recipecards
    # binding.pry
    RecipeCard.all.select {|rc| rc.user == self}
  end

#recipes should return all of the recipes this user has recipe cards for
  def recipes
  # @recipe.all.select {|recipe| recipe.all = self}
    recipecards.map {|recipecard| recipecard.recipe}
  end
def add_recipecard(recipe, date, rating)
 RecipeCard.new(self, recipe, date, rating)
end
  #ingredients.each {|ingredient| RecipeIngredient.new(self, ingredient)}



end
# binding.pry
