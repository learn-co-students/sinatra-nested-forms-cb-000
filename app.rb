require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      "<p>Welcome to the Nested Forms Lab! let's navigate to the '/new'</p>"
    end

    get '/new' do
      erb :new
    end

    post '/pirates' do
      @pirate = Pirate.new(params[:pirate])

      params[:pirate][:ships].each do |details|
        Ship.new(details)
      end

      @ships = Ship.all

      erb :show
    end

  end
end
