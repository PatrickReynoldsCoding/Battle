require "./lib/player.rb"
require "sinatra/base"
require "sinatra/reloader"

class Battle < Sinatra::Base
  enable :sessions

  configure :development do
    register Sinatra::Reloader
  end
  

get '/' do
  erb :index
end

post '/names' do
  p params
  $player1 = Player.new(params[:p1name])
  $player2 = Player.new(params[:p2name])
  redirect '/play'
end


get '/play' do
  @p1name = $player1.name
  @p2name = $player2.name
  erb :play
end

get '/attack' do
  @p1name = $player1
  @p2name = $player2
  @p1name.attack(@p2name)
  erb :attack
end


  # # Start the server if this file is executed directly (do not change the line below)
  run! if app_file == $0
end