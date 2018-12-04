class Pirate

  attr_accessor :name, :weight, :height
  PIRATES = []

  def initialize(params)
    @name = params[:name]
    @type = params[:weight]
    @booty = params[:height]
    PIRATES << self
  end

  def all
    PIRATES
  end

end
