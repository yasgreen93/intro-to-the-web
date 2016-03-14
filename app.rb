require 'sinatra'
require 'shotgun'

set :session_secret, 'super secret'

get '/' do
  "hello!"
end

get '/secret' do
  "shhhhh"
end

get '/name' do
  "Rhiannon and Yasmin"
end

get '/cat' do
  "<div style='border: 3px dashed red'>
      <img src='http://bit.ly/1eze8aE'>
   <div>"
end
