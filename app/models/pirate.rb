class Pirate
  

  attr_accessor :name, :weight, :height

  @@pirates = []

  def initialize(arguments)
    @name = arguments[:name]
    @weight = arguments[:weight]
    @height =arguments[:height]
    @@pirates << self
  end

  def self.all
  	@@pirates
  end

  def self.clear
  	@@pirates.clear
  end
end