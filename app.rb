require './environment'
require './app/models/pirate'
require './app/models/ship'

module FormsLab
  class App < Sinatra::Base

    get '/new' do
      erb :'pirates/new'
    end

    get '/' do
      erb :root
    end

    post '/pirates' do
      @pirate = Pirate.new(params[:pirate])

      params[:pirate][:ships].each do |details|
        Ship.new(details)
      end
      @ships = Ship.all

       erb :'pirates/show'
    end

    # code other routes/actions here

  end
end
