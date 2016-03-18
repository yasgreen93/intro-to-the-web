require 'sinatra/base'
require './lib/game'
require './lib/player'

class Battle < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/names' do
    Game.change(params[:player_1], params[:player_2])
    redirect '/play'
  end

  before do
    @game = Game.game
  end

  get '/play' do
    erb(:play)
  end

  get '/attack' do
    @game.attack
    # @game.computer? redirect('/attack') : erb attack
    @game.dead? ? redirect('/gameover') : erb(:attack)
  end

  get '/confirmation' do
    erb(:confirmation)
  end

  get '/gameover' do
    erb(:gameover)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
