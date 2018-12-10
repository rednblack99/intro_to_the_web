require 'sinatra'

set :session_secret, 'super secret'

get '/' do
  "Hello!"
end

get '/secret' do
  "Shh!"
end

get '/banana' do
  "Banana"
end

get '/cat' do
  erb(:index)
end