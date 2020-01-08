require_relative 'config/environment'

class App < Sinatra::Base
    get '/' do
        erb :index 
    end

    # route user to /new page to create puppy
    get '/new' do
        erb :create_puppy 
    end

    # server catches input data (create_puppy.erb)
    # displays info via display_puppy.erb page
    # Create an instance of a puppy to hold the data about the puppy you just created.
    post '/puppy' do
        @puppy = Puppy.new(params[:name], params[:breed], params[:age])
        erb :display_puppy 
    end

end