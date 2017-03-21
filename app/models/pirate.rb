class Pirate
  attr_reader :name, :weight, :height

  PIRATES = []

  def initialize(details)
    @name = details[:name],
    @weight = details[:weight],
    @height = details[:height]

    PIRATES << self
  end

  def self.all
    PIRATES
  end

end
