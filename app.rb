require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    
    post "/pirates" do 
      @pirate = Pirate.new(params[:pirate])
      params[:pirate][:ships].each do |props|
        Ship.new(props)
      end
      @ships = Ship.all
      
      erb :'pirates/show'
    end
    
    get "/" do 
      
      erb :root
    end
    
     get "/new" do 
      
      erb :'pirates/new'
    end

    end
end
