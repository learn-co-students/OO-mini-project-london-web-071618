class Recipe

      attr_accessor :name

      @@all = []

      def initialize(name)
        @name = name
        @@all << self
      end

      def self.all
        @@all
      end


      def self.most_popular
          hash = {}
          RecipeCard.all.each do |recipecard|
            if hash[recipecard.name] == nil
              hash[recipecard.name] = 1
            else
              hash[recipecard.name] += 1
            end
          end
          hash.max_by{|key, value| value}.first
      end

      def users
         recipe = RecipeCard.all.select {|recipecard| recipecard.recipe == self}
         recipe.map {|recipecard| recipecard.user}
      end

      def ingredients
          recipeIng = RecipeIngredient.all.select {|recipeIngredient| recipeIngredient.recipe == self}
          recipeIng.map {|recipeIng| recipeIng.ingredient}
      end

      def allergens
          recipe_allergens = self.ingredients.name & Allergen.all.name
      end

      def add_ingredients(ingredients_array)
          ingredients_array.each {|ingredient| RecipeIngredient.new(name, ingredient, self)}
      end
end
