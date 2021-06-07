require 'sinatra'

get '/' do
  "<h1>Hello World</h1>"
end

get '/bye' do
  "Bye!"
end