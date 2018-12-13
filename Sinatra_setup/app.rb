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

get '/cat_form' do
  erb(:cat_form)
end

post '/named-cat' do
  p params
  @name = params[:name]
  erb(:index)
end




