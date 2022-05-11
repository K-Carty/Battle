require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player'

class Battle < Sinatra::Base
  enable :sessions
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index  
  end

  post '/names' do
    $player_1 = Player.new(params[:name1])
    $player_2 = Player.new(params[:name2])
    redirect '/play'
  end 

  get '/play' do
    @name1 = $player_1
    @name2 = $player_2
    erb :play
  end

  get '/attack' do
    @name1 = $player_1
    @name2 = $player_2
    @name1.attack(@name2)
    erb :attack
  end

  run! if app_file == $0
end

