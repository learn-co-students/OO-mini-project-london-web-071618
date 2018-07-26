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
    new_rec = RecipeIngredient.new(self)
    arr_of_ingredients.each do |x|
      new_rec.ingredients << x
    end
  end

  def ingredients
    found_data = RecipeIngredient.all.find {|x| x.recipe = self}
    return found_data.ingredients
  end
end
