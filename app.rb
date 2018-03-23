require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here

    get '/' do
      erb :root
    end

    get '/new' do
      erb :'pirates/new'
    end

    post '/pirates' do

      @pirate = Pirate.new(params[:pirate])

      # p params[:pirate][:ships]
      params[:pirate][:ships].each do |details|
        Ship.new(details)
      end

      @ships = Ship.all
      # p @ships
      erb :pirates
    end

  end
end
