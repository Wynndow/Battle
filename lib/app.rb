require 'sinatra/base'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    session[:P1_name] = params[:P1_name]
    session[:P2_name] = params[:P2_name]
    redirect '/play'
  end

  get '/play' do
    @player_1_name = session[:P1_name]
    @player_2_name = session[:P2_name]
    erb :play
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
