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
      @pirate = Pirate.new(params[:pirate])
      params["pirate"]["ships"].each do |info|
        Ship.new(info)
      end
      @ships = Ship.all
      name_1 = "#{@ships[0].name}"
      @one = name_1
      puts @one
      @name_2 = @ships[0].name
      erb :'pirates/show'
    end

  end
end
