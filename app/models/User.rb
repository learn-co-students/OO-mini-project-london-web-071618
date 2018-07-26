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
        user_recipecard = RecipeCard.all.select {|card| card.user == self}
        user_recipecard.map {|card| card.recipe.name}
      end

      def add_recipe_card(name, recipe, date, rating)
          name = RecipeCard.new(name, self, recipe)
      end


      def declare_allergen(name, ingredient)
        name = Allergen.new(name, self, ingredient)
      end

      def allergens
          allergy = Allergen.all.select {|allergen| allergen.user == self}
          allergy.map {|allergen| allergen.ingredient.name}
      end

      def top_three_recipes
          recipecard_hash = {}

          user_recipecard = RecipeCard.all.select {|card| card.user == self}

          user_recipecard.each {|card| recipecard_hash[card.name] = card.rating}
          sorted_top_3_recipes = recipecard_hash.sort_by {|key, value| value}.to_h.keys.last(3)
      end

      def most_recent_recipe
        recipecard_hash = {}
        user_recipecard = RecipeCard.all.select {|card| card.user == self}
        user_recipecard.each {|card| recipecard_hash[card.name] = card.date}
        recipecard_hash
      end

end
