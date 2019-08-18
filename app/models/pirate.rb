class Pirate
  attr_accessor :name, :weight, :height

  @@all = []

  def initialize(hash)
    @name = hash[:name]
    @weight = hash[:weight]
    @height = height[:height]
    @@all << self
  end

    def self.all
      return @@all
    end

    def self.clear
      @@all.clear
    end

end
