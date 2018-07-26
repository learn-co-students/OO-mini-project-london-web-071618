class Allergen
#An Allergen is a join between a user and an ingredient
#This is a has-many-through relationship.
#What methods should an instance of this model respond to?
  attr_accessor :name, :user, :ingredient
  @@all = []

  def initialize(user, ingredient, name)
    @user=user
    @ingredient=ingredient
  @name = name
    @@all << self
  end
#Allergen.all should return all of the Allergen instances
  def self.all
    @@all
  end


end
