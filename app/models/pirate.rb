class Pirate

  attr_accessor :name, :weight, :height

  @@all = []

  def self.all
    @@all
  end

  def initialize(params)
    self.name, self.weight, self.height = params[:name], params[:weight], params[:height]
    @@all << self
  end


end
