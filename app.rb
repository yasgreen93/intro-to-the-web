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
  @name = ["Amigo", "Oscar", "Viking"].sample 
  erb(:index)
end
