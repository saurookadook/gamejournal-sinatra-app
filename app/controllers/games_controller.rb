class GamesController < ApplicationController

  use Rack::Flash

  get '/games' do
    @current_user = current_user
    @users = User.all
    @games = Game.all
    erb :"games/list_games"
  end

  get '/games/new' do
    @current_user = verify_user
    erb :"tweets/add_game"
  end

  get '/games/:slug' do
    @current_user = current_user
    erb :"games/show_by_slug"
  end

  get '/game/:id' do
    @current_user = current_user
    erb :"games/show_by_id"
  end

  get '/games/:id/edit' do
    @current_user = verify_user
  end

  post '/games' do

  end

  patch '/games/:id' do

  end

  delete '/games/:id/delete'

end
