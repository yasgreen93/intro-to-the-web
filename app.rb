#!/usr/bin/env ruby
require 'sinatra'
require 'shotgun'

get '/' do
  'hello!'
end

get '/secret' do
  'Top secret'
end

get '/bob' do
  'bib'
end
