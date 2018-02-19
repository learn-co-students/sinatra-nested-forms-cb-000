class Pirate

  attr_accessor :name, :weight, :height

   PIRATES = [] #empty array of pirates

  def initalize(params) #Pirates should have a name, weight, and height.
    @name = params[:name]
    @weight = params[:weight]
    @height = params[:height]
    PIRATES << self #store pirates in array
  end

def self.all #You will also need a class method that returns all the pirates
  PIRATES
end

end
