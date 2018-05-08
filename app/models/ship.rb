class Ship
  attr_reader :name, :type, :booty
  #SHIPS = []
  # same to use @@all
  @@all = []

  def initialize(params)
    @name = params[:name]
    @type = params[:type]
    @booty = params[:booty]

    #SHIPS << self
    @@all <<self
  end

  def self.all
    #SHIPS
    @@all
  end

  def self.clear
    @@all.clear
  end

end
