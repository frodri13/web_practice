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

get '/cat' do
  "<div><img src='https://i.imgur.com/jFaSxym.png' style='border: dashed red;'></div>"
end
