
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

  def self.most_common_allergen #adham
  string_array = Allergen.all.map {|x| x.ingredient}
  freq = string_array.inject(Hash.new(0)) { |h,v| h[v] += 1; h }
  string_array.max_by { |v| freq[v]}
  end

end
