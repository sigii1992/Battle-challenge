require 'sinatra'
require "sinatra/reloader"

get '/' do
  "Cats"
end

get '/cat' do
  @name =  ["Amigo", "Misty", "Almond"].sample 
  erb(:index)
end
