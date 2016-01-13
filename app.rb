require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/game'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $game = Game.new(Player.new(params[:P1_name]), Player.new(params[:P2_name]))
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb :play
  end

  post '/attack' do
    $game.attack($game.player_2)
    $game.switch_turns
    redirect '/attack'
  end

  get '/attack' do
    @game = $game
    erb :attack
  end



  # start the server if ruby file executed directly
  run! if app_file == $0
end
