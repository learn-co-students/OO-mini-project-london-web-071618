class Recipe_card

  attr_accessor :name, :user, :recipe, :date, :rating

  @@all = []

  def initialize(name, user, recipe, date, rating)
    @name = name
    @user = user
    @recipe = recipe
    @date = date
    @rating = rating
    @@all << self
  end

  def self.all
    @@all
  end

end
