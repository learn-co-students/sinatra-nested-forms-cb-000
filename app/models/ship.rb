class Ship
    attr_accessor :name, :type, :booty

    SHIPS = []

    def initialize(argum)
        @name = argum[:name]
        @type = argum[:type]
        @booty = argum[:booty]
        SHIPS << self    
    end

    def self.all
        SHIPS
    end

    def self.clear
        SHIPS.clear     
    end   
end