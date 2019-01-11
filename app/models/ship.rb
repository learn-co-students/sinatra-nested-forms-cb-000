class Ship
  attr_accessor :name, :type, :booty
  @@all = []
  def initialize(stuff)
    @name = stuff["name"]
    @type = stuff["type"]
    @booty = stuff["booty"]
    @@all << self
  end
  def self.all
    @@all
  end
  def self.clear
    @@all = []
  end

end
