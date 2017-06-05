class Pirate
  attr_accessor :name, :weight, :height, :ships

  PIRATES = []
  def initialize(name, weight, height, ships)
    @name, @weight, @height = name, weight, height
    self.ships = []
    create_and_add_ships(ships)
    PIRATES << self
    self
  end

  def self.all
    PIRATES
  end

  def self.clear
    PIRATES.clear
  end

  private
  def create_and_add_ships(ships_raw_info)
    ships_raw_info.each do |ship_info|
      ship = Ship.new(ship_info[:name], ship_info[:type], ship_info[:booty])
      self.ships << ship
    end
  end
end
