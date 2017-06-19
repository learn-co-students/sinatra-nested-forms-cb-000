require './environment'
require_relative 'app/models/pirate.rb'
require_relative 'app/models/ship.rb'

module FormsLab
  class App < Sinatra::Base
    set :views, Proc.new { File.join(root, "views/pirates") }

    get '/' do
      erb :root
    end

    get '/new' do
      erb :new
    end

    post '/pirates' do
      @pirate = Pirate.new(params[:pirate])
      erb :show
    end

    def format_label(symbol)
      return symbol.to_s.split("_").collect{|s| s.capitalize}.join(" ")
    end

  end
end
