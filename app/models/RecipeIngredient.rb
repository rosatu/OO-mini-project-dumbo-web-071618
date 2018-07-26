class RecipeIngredient < Cook
    attr_accessor :recipe, :ingredient
    @@all = []

    def initialize(args)
        super
        @@all << self
    end
end