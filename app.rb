require 'sinatra/base'
require "sinatra/reloader" 
require './lib/player.rb'
require './lib/game.rb'

class Battle < Sinatra::Base
  enable :sessions

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb(:index)
  end

  get '/play' do
    @name1 = $name1
    @name2 = $name2
    erb(:play)
  end

  post '/names' do
    $name1 = Player.new(params[:name1])
    $name2 = Player.new(params[:name2])
    redirect to('/play')
  end

  get '/attack' do
    @name1 = $name1
    @name2 = $name2
    # @name1.attack(@name2)
    Game.new.attack(@name2)
    erb(:attack)
  end

  run! if app_file ==$0
end