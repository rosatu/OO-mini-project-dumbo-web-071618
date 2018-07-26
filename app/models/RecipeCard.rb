class RecipeCard < Cook
    attr_accessor :date, :rating, :user, :recipe
    @@all = []

    def initialize(args)
        super
        @@all << self
    end

    def self.all
        @@all
    end


end