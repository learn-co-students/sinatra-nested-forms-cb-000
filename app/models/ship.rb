class Ship
  attr_reader :name, :type, :booty
  @@ships = []

  def initialize(opts={})
    @name = opts[:name]
    @type = opts[:type]
    @booty = opts[:booty]
    @@ships << self
  end

  def self.all
    @@ships
  end

  def self.clear
    @@ships.clear
  end
end
