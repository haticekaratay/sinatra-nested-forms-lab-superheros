
class SuperHero
    attr_accessor :name, :power, :biography
    @@all = []
    def initialize(hash)
        self.name = hash[:name]
        self.power = hash[:power]
        self.biography = hash[:biography]
        self.save
    end

    def save
        @@all << self
    end

    def self.all
        @@all
    end

end