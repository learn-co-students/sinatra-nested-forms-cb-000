class Ship

  attr_accessor :name, :type, :booty

  @@ships = [] 
  
  def initialize(attributes)
    attributes.each do |attr, value|
      self.send("#{attr}=", value)
    end
    @@ships << self
  end

  def self.all
    @@ships
  end

  def self.clear
    @@ships.clear
  end
  
end
