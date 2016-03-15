#!/usr/bin/env ruby
require 'sinatra'

get '/' do
  'hello!'
end

get '/random-cat' do
  @name = %w(Amigo Oscar Viking).sample
  erb(:index)
end

get '/named-cat' do
  p params
  @name = params[:name]
  erb(:index)
end
