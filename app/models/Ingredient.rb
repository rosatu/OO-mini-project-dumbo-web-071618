class Ingredient
  attr_accessor :name, :recipe_ingredient_id, :allergen_id

  def initialize(args)
    args.each do |key,value|
      if self.respond_to? "#{key}=".to_sym
      self.send("#{key}=", value)

end
