class Ship
  attr_accessor :name, :type, :booty
  @@ships =[]

  def initialize(ship_hash)
    @name = ship_hash[:name]
    @type = ship_hash[:type]
    @booty = ship_hash[:booty]
    @@ships << self
  end

  def self.all
    @@ships
  end

  def self.clear
    @@ships = []
  end
end
