class Recipe
attr_accessor :name, :recipe_ingredient_id

  def initialize(args)
    @name = args[:name]
    @recipe_ingredients_id = args[:recipe_ingredients_id]
  end


end
