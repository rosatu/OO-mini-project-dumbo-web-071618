class Ingredient < Cook
  attr_accessor :name, :recipe_ingredient, :allergen
  @@all = []

  def initialize(args)
    super
    @@all << self
  end

  def self.all
    @@all
  end

  def most_common_allergen
      highest_occurance = [nil, 0]
  
      Allergen.all.each do |allergen|
       count = Allergen.all.count do 
          |a| a.user == allergen.user 
        end
  
        if highest_occurance[1] < count
          highest_occurance[0] = allergen.user
          highest_occurance[1] = count
        end
      end
      highest_occurance[0]
  end
end
