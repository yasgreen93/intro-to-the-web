require 'sinatra/base'

class Battle < Sinatra::Base

  get '/' do
    erb(:index)
  end

  get '/greet' do
    @player_1 = params[:player_1]
    erb(:greet_player)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
