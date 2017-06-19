class Ship

  @@all = []

  def self.all
    return @@all
  end

  def self.clear
    @@all = []
  end

  def self.attribute_symbols
    return STRING_ATTR_SYMBOLS
  end

  STRING_ATTR_SYMBOLS = [:name, :type, :booty]
  attr_accessor *STRING_ATTR_SYMBOLS

  def initialize(attributes)
    attributes.each {|key, value| self.send(("#{key}="), value)}
    @@all << self
  end

end
