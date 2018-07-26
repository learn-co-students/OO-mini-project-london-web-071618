class RecipeCard
  attr_accessor :user, :recipe, :date, :rating
  @@all = []

  def initialize(user, recipe, date, rating)
    @user = user
    @date = date
    @rating = rating
    @recipe = recipe
    @@all << self
  end

  def self.all
    @@all
  end



end
