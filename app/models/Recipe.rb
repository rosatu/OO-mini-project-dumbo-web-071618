class Recipe < Cook
  attr_accessor :name
  @@all = []

  def initialize(args)
    super
    @@all << self
  end

  def self.all
    @@all
  end

  def self.most_popular
    highest_occurance = [nil, 0]

    RecipeCard.all.each do |card|
     count = RecipeCard.all.count do 
        |c| c.recipe == card.recipe 
      end

      if highest_occurance[1] < count
        highest_occurance[0] = card.recipe
        highest_occurance[1] = count
      end
    end
    highest_occurance[0]
  end

  def users
    RecipeCard.all.select{|card| card.recipe == self}
  end

  def ingredients
    RecipeIngredient.all.select{|ingredient| ingredient.recipe == self}
  end

  def allergens
    Allergens.all.select do |allergen|
      self.ingredients.include?(allergen)
    end
  end

  def add_ingredients(ingredients)
    ingredients.each do |ingredient|
      RecipeIngredient.new(recipe: self, ingredient: ingredient)
    end
  end
end



