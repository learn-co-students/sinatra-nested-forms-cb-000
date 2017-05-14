class Ship

  attr_accessor :name, :type, :booty

  @@ships = []

  def initialize(arguments)
  	@name = arguments[:name]
  	@type = arguments[:type]
  	@booty = arguments[:booty]
    @@ships << self
  end

  def self.all
  	@@ships
  end

  def self.clear
  	@@ships.clear
  end
end