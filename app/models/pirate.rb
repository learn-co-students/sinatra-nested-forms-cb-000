class Pirate
  
  @@all = []
  
  def self.all 
    @@all 
  end 
  
  def initialize(params)
    @name = params[:name]
    @weight = params[:weight]
    @height = params[:height]
    @all << self 
  end 
  
end