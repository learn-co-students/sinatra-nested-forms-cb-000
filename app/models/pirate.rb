class Pirate
  attr_reader :name, :weight, :height
  @@pirates = []

  def initialize(opts={})
    @name = opts[:name]
    @weight = opts[:weight]
    @height = opts[:height]
    @@pirates << self
  end

  def self.all
    @@pirates
  end

  def self.clear
    @@pirates.clear
  end
end
