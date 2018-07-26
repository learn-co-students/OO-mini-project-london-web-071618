
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
# =======
#   def self.most_common_allergen #
#     count_arr = Allergen.all.map{|x| x.ingredient.name}
#     val = count_arr.max_by {|obj| count_arr.count(obj)}
#     Ingredient.all.find {|obj| obj.name = val }
# >>>>>>> ritz
  end

end
