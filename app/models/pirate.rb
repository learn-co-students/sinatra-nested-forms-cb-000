class Pirate

  attr_accessor :name, :weight, :height

  @@all = []

  def initialize(params)
    @name, @weight, @height = params[:name], params[:weight], params[:height]
    @@all << self
  end

  def self.all
    @@all
  end

end


#Create two classes, a Pirate class and a Ship class. Pirates should have a name, weight, and height.
#You will also need a class method that returns all the pirates.
