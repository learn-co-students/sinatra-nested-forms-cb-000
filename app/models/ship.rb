class Ship

  attr_accessor :name, :type, :booty

@@ships = [] #an empty array to store Ships

  def intialize(params)
@name = params[:name]
@type = params[:type]
@boty = params[:booty]
  @@ships << self #store pirates in array
  end

def self.all
  @@ships
end

def self.clear
  @@ships = []
end

end
