require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here

  get '/' do

    erb :root
  end

  get '/new' do

    erb :"pirates/new"
  end

  post '/pirates' do

      pirate = Pirate.new(params[:pirate])
      @ships = params[:pirate][:ships]
      @pirate_name = pirate.name
      @pirate_weight = pirate.weight
      @pirate_height = pirate.height
     puts @ships.class
      @ships.each do |ship|
        Ship.new(ship)
      end
      @all_ships = Ship.all
      puts @all_ships.class
      puts @all_ships[0].name
=begin
      params[:pirate][:ships].each do |ship|
            Ship.new(ship[:name],ship[:type],ship[:booty])
          end
=end

  #  puts params[:pirate][:ships] #this is an array
      erb :"pirates/show"
  end
  end
end
