require 'sinatra/base'
require 'sinatra/reloader'
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
    @game = $game
    erb(:play)
  end

  post '/names' do
    name1 = Player.new(params[:name1])
    name2 = Player.new(params[:name2])
    $game = Game.new(name1, name2)
    redirect to('/play')
  end

  get '/attack' do
    @game = $game
    @game.attack(@game.player2)
    p "The player should be #{@game.change_player}"
    @game.change_player
    erb(:attack)
  end

  run! if app_file == $0
end
