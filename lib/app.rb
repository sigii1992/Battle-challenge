require 'sinatra'
require "sinatra/reloader"

get '/' do
  "Cats"
end

get '/cat' do
  erb(:index)
end

