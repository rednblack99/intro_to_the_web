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

get '/random-cat' do
  @name = ["Chairman Meow", "Oscar", "Viking"].sample
  erb(:index)
end

get '/named-cat' do
  @name = params[:name]
  @age = params[:age]
  erb(:index)
end