require 'sinatra'
require "sinatra/reloader" 

get '/' do
  "Cats"
end

get '/random-cat' do
  @name =  ["Amigo", "Misty", "Almond"].sample 
  erb(:index)
end

get '/cat-naming-form' do
  erb(:cat_naming_form)
end

post '/named-cat' do
  p params
  @name = params[:name]
  erb(:index)
end

