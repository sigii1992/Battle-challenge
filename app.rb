require 'sinatra/base'
require "sinatra/reloader" 
require 'player'

class Battle < Sinatra::Base
  enable :sessions

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb(:index)
  end

  get '/play' do
    @name1 = $name1.name 
    @name2 = $name2.name 
    erb(:play)
  end

  post '/names' do
    $name1 = Player.new(params[:name1])
    $name2 = Player.new(params[:name2])
    redirect to('/play')
  end

  get '/attack' do
     @name1 = $name1.name 
     @name2 = $name2.name 
    erb(:attack)
  end

  run! if app_file ==$0
end