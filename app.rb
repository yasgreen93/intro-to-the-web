#!/usr/bin/env ruby
require 'sinatra'

get '/' do
  'hello!'
end

get '/cat' do
  @name = ['Amigo', 'Oscar', 'Viking'].sample
  erb(:index)
end
