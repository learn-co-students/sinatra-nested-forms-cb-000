
class Ship
  @@ships = []
  attr_accessor :name, :type, :booty
  def initialize(arg)
    arg[:name] = name
    arg[:type] = type
    arg[:booty] = booty
    @@ships << self
  end

  def self.all
    @@ships
  end

  def self.clear
    @@ships.clear
  end
end
