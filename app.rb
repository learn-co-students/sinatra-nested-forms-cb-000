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
      @pirate = Pirate.new.tap do |p|
        p.name = params[:pirate][:name]
        p.height = params[:pirate][:height]
        p.weight = params[:pirate][:weight]
      end

      params[:pirate][:ships].each do |ship_attr|
        Ship.new(ship_attr)
      end

      @ships = Ship.all 
      erb :"pirates/show"

    end
    
  end
  
end
