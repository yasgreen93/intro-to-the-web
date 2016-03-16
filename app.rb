require 'sinatra/base'

class Battle < Sinatra::Base

enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:p1] = params[:player_1]
    session[:p2] = params[:player_2]
    redirect '/play'
  end

  get '/play' do
    @player_1 = session[:p1]
    @player_2 = session[:p2]
    erb(:greet_player)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
