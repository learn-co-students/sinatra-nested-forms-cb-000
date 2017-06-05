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
      @pirate = Pirate.new(params[:pirate][:name], params[:pirate][:weight], params[:pirate][:height],
       params[:pirate][:ships])
      # puts @pirate.inspect
      # puts params.inspect
      # puts  params[:pirate][:ships].inspect
      puts @pirate.inspect
      puts @pirate.ships.first.name
      erb :'pirates/show'
    end
  end
end
