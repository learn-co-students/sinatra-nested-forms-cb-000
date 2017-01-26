class Pirate
  attr_accessor :name, :weight, :height

  @@all = []

  def initialize(args)
    @name, @weight, @height = args[:name], args[:weight], args[:height]
    self.class.all << self
  end

  def self.all
    @@all
  end

  def self.clear
    self.all.clear
  end
end