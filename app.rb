require 'sinatra'
require "sinatra/reloader"


get '/' do
  "Cats"
end

get '/secret' do
  "shhh it's a secret"
end

get '/a' do
  "we are in a"
end

get '/b' do
  "in b"
end
