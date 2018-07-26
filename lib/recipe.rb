class Recipe
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    #@recipe = recipe
    @@all << self
  end

#Recipe.all should return all of the recipe instances
  def self.all
    @@all
  end


#Recipe#users should return the user instances who have recipe cards with this recipe
  def users
    recipe_rc = RecipeCard.all.select {|rc| rc.recipe == self}
    # recipe_rc.map {|rc| rc.user}
  end

#Recipe.most_popular should return the recipe instance with the highest number of users
#(the recipe that has the most recipe cards)
  def most_popular

      # Recipecard.all.select {|rc| rc.recipe ==self}
      # most_popular.map {|rc| rc.users}
      recipe_hash = {}
      RecipeCard.all.each do |recipecard|
        if recipe_hash[recipecard.name]==nil
          recipe_hash[recipecard.name]=1
        else
          recipe_hash[recipecard.name]+= 1
        end
      end
      recipe_hash.max_by{|k,v| v}[0]
    end

#Recipe#ingredients should return all of the ingredients in this recipe
  def ingredients
    recipeingredient.map {|ri| ri.ingredient}
  end

  def allergens
  end


  def add_ingredients(ingredients)
    #new_array=[]
  ingredients.each {|ingredient| RecipeIngredient.new(self, ingredient)}
  end

end
