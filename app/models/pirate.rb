class Pirate
  attr_reader :name, :weight, :type, :height
  @@pirates = []

  def initialize(params)
    @name = params[:name]
    @weight = params[:weight]
    @type = params[:type]
    @height = params[:height]

    @@pirates << self
  end

  def self.all
    @@pirates
  end

end
