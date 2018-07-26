class Ingredient
  attr_accessor :ingredient
  @@all = []

  def initialize(ingredient)
    @ingredient = ingredient
    @@all << self
  end

#Ingredient.all should return all of the ingredient instances
  def self.all
    @@all
  end


#Ingredient.most_common_allergen should return the ingredient instance that the


#highest number of users are allergic to

  def most_common_allergen
    allergen_hash={}
      Allergen.all.each do |allergen|
        if allergen_hash[allergen.name] ==nil
          allergen_hash[allergen.name]= 1
        else
          allergen_hash[allergen.name] +=1
        end
      end
      allergen_hash.max_by{|k,v| v}[0]
  end

end
