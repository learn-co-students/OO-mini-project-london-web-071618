class RecipeCard

attr_accessor :name, :user, :recipe, :rating, :date
@@all = []

      def initialize(name, user, recipe, rating, date)
        @name = name
        @user = user
        @recipe = recipe
        @rating = rating
        @date = date
        @@all << self
      end


      def self.all
        @@all
      end

end
