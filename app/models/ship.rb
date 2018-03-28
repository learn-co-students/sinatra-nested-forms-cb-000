class Ship
  attr_accessor :name, :type, :booty


  Ships = []

  def initialize(params)
    @name = params[:name]
    @type = params[:type]
    @booty = params[:booty]
    Ships << self
  end

  def self.all
    Ships
  end

  def self.clear
    Ships.each { |ship| ship = nil }
  end

end
