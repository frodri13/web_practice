require 'sinatra'
require "sinatra/reloader" if development?

get '/' do
  "<h1>Hello World</h1>"
end

get '/secret' do
  "What are you doing here? Don't tell anyone!"
end

get '/bye' do
  "Bye!"
end

get '/random-cat' do
  @name = ["Amigo", "Misty", "Almond"].sample 
  erb(:index)
end

get '/cat-form' do
  erb(:cat_form) 
end

post '/named-cat' do
  p params[:name]
  @name = params[:name]
  erb(:index)
end

get '/named-cat' do
  @name = " . go to /named-cat to get your name in here"
  erb(:index)
end
