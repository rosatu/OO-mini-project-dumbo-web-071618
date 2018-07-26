class Allergen < Cook
    attr_accessor :user, :ingredient
    @@all = []

    def initialize(args)
        super
        @@all << self
    end

    def self.all
        @@all
    end
end