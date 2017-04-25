require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :root
    end

    get '/new' do
      erb :'pirates/new'
    end

    post '/pirates' do
      @pirate = params[:pirate]
      @first_ship = @pirate[:ships].first
      @second_ship = @pirate[:ships].last

      erb :'pirates/show'
    end
  end
end
