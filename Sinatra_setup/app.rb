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
  "<div style='border: 2px dashed red'>
  <img src='http://bit.ly/1eze8aE'>
  </div>"
end