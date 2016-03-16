#!/usr/bin/env ruby
require './lib/player.rb'

require 'sinatra/base'


class Battle < Sinatra::Base

  enable :sessions


  get '/' do
    'Hello Battle!'
    erb(:index)
  end

  post '/names' do
     $player1  = Player.new(params[:name1])
     $player2 = Player.new(params[:name2])
     redirect '/play'
  end

  get '/play' do
    @player1 = $player1
    @player2 = $player2
    erb(:play)
  end

  post '/attack' do
    @player1 = $player1
    @player2 = $player2
    @player1.attack(@player2)
    erb(:attack)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
