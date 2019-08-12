class Pirate
  attr_accessor :name, :weight, :height

  @@all = []

  def initialize(params)
    self.name = params[:name]
    self.weight = params[:weight]
    self.height = params[:height]
    @@all << self
  end

  def self.all
    @@all
  end

end
