
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

  def self.most_common_allergen #
    count_arr = Allergen.all.map{|x| x.ingredient.name}
    val = count_arr.max_by {|obj| count_arr.count(obj)}
    Ingredient.all.find {|obj| obj.name = val }
  end

end
