require 'sinatra/base'
require './lib/player'

class Battle < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/names' do
    $player_1_object = Player.new(params[:player_1])
    $player_2_object = Player.new(params[:player_2])
    redirect '/play'
  end

  get '/play' do
    @p1_name = $player_1_object.name
    @p2_name = $player_2_object.name
    erb(:play)
  end

  get '/attack' do
    Game.new.attack $player_2_object
    @p2_name = $player_2_object.name
    @p2_hp = $player_2_object.current_hp
    erb(:attack)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
