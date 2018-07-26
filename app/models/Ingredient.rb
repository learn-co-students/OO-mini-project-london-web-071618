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


    def self.most_common_allergen
      hash = {}
      Allergen.all.each do |allergen|
        if hash[allergen.name] == nil
          hash[allergen.name] = 1
        else
          hash[allergen.name] += 1
        end
      end
      hash.max_by{|key, value| value}.first
  end

    end


end
