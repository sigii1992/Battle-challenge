require 'sinatra/base'
require "sinatra/reloader" 

class Battle < Sinatra::Base
  enable :sessions

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb(:index)
  end

  get '/play' do
    @name1 = session[:name1]
    @name2 = session[:name2]
    erb(:play)
  end

  post '/names' do
    session[:name1] = params[:name1]
    session[:name2] = params[:name2]
    redirect to('/play')
  end

  get '/attack' do
    @name1 = session[:name1]
    @name2 = session[:name2]
    erb(:attack)
  end

  run! if app_file ==$0
end