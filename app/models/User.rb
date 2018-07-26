class User

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def recipes
    #get all the recipe cards that belong to this instance
    user_recipecard = Recipe_card.all.select {|recipecard| recipecard.user == self }
    user_recipecard.map {|recipecard| recipecard.recipe}
  end

  def add_recipe_card(instance_recipe, date, rating)
    Recipe_card.new(instance_recipe.name, self, instance_recipe, date, rating)
  end

  def declare_allergen(ingredient_instance)
    Allergen.new(ingredient_instance.name, self, ingredient_instance)
  end

  def allergens
    user_allergen = Allergen.all.select {|allergen| allergen.user == self }
    user_allergen.map {|allergen| allergen.ingredient}
  end

  def top_three_recipes
      all_recipes_for_user = Recipe_card.all.select {|recipecard| recipecard.user == self }

      hash_ratings = {}
      all_recipes_for_user.each {|recipecard| hash_ratings[recipecard.name] = recipecard.rating }
      array_of_users_recipe_ratings = hash_ratings.sort

      ordered_top_three = [array_of_users_recipe_ratings[0],array_of_users_recipe_ratings[1], array_of_users_recipe_ratings[2]]
  end

  def most_recent_recipe
      all_recipes_for_user = Recipe_card.all.select {|recipecard| recipecard.user = self}

      hash_dates = {}
      all_recipes_for_user.each {|recipecard| hash_dates[recipecard.name] = recipecard.date }

      array_of_users_recipe_dates = hash_dates.sort.last
  end


#BONUS NOT WORKING-ISH
  def safe_recipes
    #all of this users recipes
    users_recipes = self.recipes
    # all_recipeingredients = RecipeIngredient.all.select {|recipeingredient| recipeingredient.recipe }
    array_all_users_ingredients = []
    users_recipes.each do |recipe|
      RecipeIngredient.all.each do |recipeingredient|
        if recipeingredient.recipe == recipe
            array_all_users_ingredients << recipeingredient
        end
      end
    end

    users_allergens = Allergen.all.select{|allergen| allergen.user == self }

    array2= []
    array_all_users_ingredients.each do |recipeingredient|
      users_allergens.each do |allergen|
        if allergen.ingredient != recipeingredient.ingredient
            array2 << recipeingredient.recipe
        end
      end
    end
    array2
  end

end
