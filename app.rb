require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      erb:root
    end

    get '/new' do
      erb :'pirates/new'
    end

    post '/pirates' do
      #@p = params[:pirate][:name]
      #puts @p
      @pirate = Pirate.new( params[:pirate][:name], params[:pirate][:weight], params[:pirate][:height])

      params[:pirate][:ships].each do |ship_data|
        Ship.new( ship_data[:name], ship_data[:type], ship_data[:booty] )
      end
      #@ship1 = Ship.new(params[:pirate][:ships][:name], params[:pirate][:ships][:type], params[:pirate][:ships][:booty] )
      #@ship2 = Ship.new(params[:ship_name_2], params[:ship_type_2], params[:ship_booty_2] )
      @ships = Ship.all

      erb :'pirates/show'
    end

  end
end
