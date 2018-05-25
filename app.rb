require './environment'
require 'pry'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :root
    end

    get '/new' do
      erb :new
    end

    post '/pirates' do
      @pirate = Pirate.new(params[:pirate])
      @ships = []
      params[:pirate][:ships].each do |ship_params|
        @ships << Ship.new(ship_params)
      end
      erb :show
    end

  end
end
