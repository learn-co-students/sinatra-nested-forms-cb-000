# set :views, Proc.new { File.join(root, "pirates") }

require './environment'


module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here

    get '/' do
      erb :new
    end

    get '/new' do
      erb :show
    end

    post '/pirates' do
      @pirate = Pirate.new(params[:pirate])
      @ships = params[:pirate][:ships]
      @ship1 = Ship.new(@ships[0])
      @ship2 = Ship.new(@ships[1])
      erb :pirates
    end

  end
end
