require 'sinatra'
require "sinatra/reloader"


get '/' do
  "Cats"
end

get '/cat' do
  "<img src=\"https://i.imgur.com/jFaSxym.png\" style=\"border: dashed red;\">"
end

