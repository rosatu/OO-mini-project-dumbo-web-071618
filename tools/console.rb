require_relative '../config/environment.rb'

#test Last_recipe_inserted===============================================
gabriel = User.new(name: "Gabrioob")
rosa = User.new(name: "Rosooob")
r1 = Recipe.new(name: "Gabroobski Soup")
r2 = Recipe.new(name: "Rosoobiedoo pie")
r3 = Recipe.new(name: "Rosoobiedobiedoo")
r4 = Recipe.new(name: "plankton burger")

gabriel.add_recipe_card(r2, "date", 12)
gabriel.add_recipe_card(r3, "date", 98)
gabriel.add_recipe_card(r1, "date", 2)
gabriel.add_recipe_card(r4, "date", 30)


rosa.add_recipe_card(r1, "date", "1000")
rosa.add_recipe_card(r1, "date", "3")
rosa.add_recipe_card(r1, "date", "40")


#expect Rosoobiedobiedoo
puts "#{gabriel.most_recent_recipe.name}"
#=======================================================================
i1 = Ingredient.new(name: "beansauce")
i2 = Ingredient.new(name: "Cookies :[")
gabriel.declare_allergen(i1)
gabriel.declare_allergen(i2)
gabriel.allergens.each {|i| puts i.name}
#=======================================================================

puts Recipe.most_popular






binding.pry