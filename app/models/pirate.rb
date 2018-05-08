class Pirate
  attr_reader :name, :weight, :height
  # PIRATES = []
  @@all = []


  def initialize(params)
    @name = params[:name]
    @weight = params[:weight]
    @height = params[:height]

    #PIRATES << self
    @@all << self
  end

  def self.all
    #PIRATES
    @@all
  end
end
