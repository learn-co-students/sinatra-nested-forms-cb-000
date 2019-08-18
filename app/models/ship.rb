class Ship

  attr_accessor :name, :type, :booty

  @@all = []

  def initialize(hash)
    @name = hash[:name]
    @type = hash[:type]
    @booty = hash[:booty]
    @@all << self
  end

    def self.all
      return @@all
    end

    def self.clear
      @@all.clear
    end
end
