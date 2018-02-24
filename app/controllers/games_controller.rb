class GamesController < ApplicationController

  use Rack::Flash

  get '/games' do
    @current_user = current_user
    @users = User.all
    @games = Game.all
    erb :"games/list_games"
  end

  get '/games/:slug' do
    @current_user = current_user
  end
end
