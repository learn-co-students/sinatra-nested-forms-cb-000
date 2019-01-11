class Pirate
  attr_accessor :name, :weight, :height
  @@all = []
  def initialize(stuff)
    @name = stuff["name"]
    @weight = stuff["weight"]
    @height = stuff["height"]
    @@all << self
  end
  def self.all
    @@all
  end
end
