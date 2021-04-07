class Team
    attr_accessor :name , :motto
    @@all = []
    def initialize(hash)
        self.name = hash[:name]
        self.motto = hash[:motto]
        @@all << self
    end

    def self.all
        @@all
    end
end