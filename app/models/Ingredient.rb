class Ingredient
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.most_common_allergen
    group_by_ingredient = Allergen.all.group_by {|allergen| allergen.ingredient}
    counted = group_by_ingredient.map {|ingredient, allergen| [ingredient, allergen.count]}
    max_number = counted.map {|ingredient| ingredient[1]}.max
    most_common_allergen = counted.find {|ingredient| ingredient[1] == max_number}[0]
  end
end
