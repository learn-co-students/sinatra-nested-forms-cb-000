class Pirate

  @@all = []

  def self.all
    return @@all
  end

  def self.attribute_symbols
    return STRING_ATTR_SYMBOLS
  end
  STRING_ATTR_SYMBOLS = [:name, :weight, :height]
  attr_accessor *STRING_ATTR_SYMBOLS
  attr_reader :ships

  def initialize(attributes)
    attributes.each {|key, value| self.send(("#{key}="), value)}
    @@all << self
  end

  def ships=(ship_attributes_array)
    @ships = []
    ship_attributes_array.each{|attributes| @ships << Ship.new(attributes)}
    return @ships
  end
end
