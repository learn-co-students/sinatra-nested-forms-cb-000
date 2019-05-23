require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      resp = Rack::Response.new
      resp.status = 200

      erb :root
    end

    get '/new' do
      resp = Rack::Response.new
      resp.status = 200

      erb :"pirates/new"
    end

    post '/pirates' do
      resp = Rack::Response.new
      resp.status = 200
      @pirate = Pirate.new(params[:pirate])

      params[:pirate][:ships].each do |details|
        Ship.new(details)
      end
      @ships = Ship.all

      erb :"pirates/show"
    end


  end
end
