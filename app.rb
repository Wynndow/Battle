require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/game'
require_relative './lib/attack'

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
    Attack.the_other_player($game.opponent)
    redirect '/attack'
  end

  get '/attack' do
    @game = $game
    erb :attack
  end

  post '/switch_turns' do
    if $game.game_over?
      redirect '/game_over'
    end
    $game.switch_turns
    redirect '/play'
  end

  get '/game_over' do
    @game = $game
    erb :game_over
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
