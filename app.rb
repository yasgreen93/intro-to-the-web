require 'sinatra/base'
require './lib/game'
require './lib/player'

class Battle < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/names' do
    $game = Game.new Player.new(params[:player_1]) , Player.new(params[:player_2])
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb(:play)
  end

  get '/attack' do
    @game = $game
    @game.attack
    @game.dead? ? redirect('/gameover') : erb(:attack)
  end

  get '/gameover' do
    erb(:gameover)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
