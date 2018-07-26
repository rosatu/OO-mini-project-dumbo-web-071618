class User < Cook
    attr_accessor :name, :recipe_card, :allergen
    @@all = []

    def initialize(args)
        super
        @@all << self
    end

    def self.all
        @@all
    end

    def recipe 
        RecipeCard.all.select {|card| card.user == self}
    end    

    def add_recipe_card(recipe, date, rating)
        RecipeCard.new(recipe: recipe, date: date, rating: rating, user: self)
    end    

    def declare_allergen(ingredient)
        Allergen.new(user: self, ingredient: ingredient)
    end     

    def allergens
        my_allergens = Allergen.all.select {|allergen|allergen.user == self} 
        my_allergens.map do |allergen|
            allergen.ingredient
        end        
   end  
   
   def top_three_recipes
        my_cards = RecipeCard.all.select {|card| card.user == self}
        cards_by_rating = my_cards.sort {|a,b| a.rating <=> b.rating}
        top_three = [cards_by_rating[-1], cards_by_rating[-2], cards_by_rating[-3]]
        top_three.each do |card|
            puts "name: #{card.recipe.name}\trating: #{card.rating}"
        end


   end  

   def most_recent_recipe
        my_recipes = RecipeCard.all.select {|card| card.user == self}
        my_recipes.last.recipe      
   end  

end