class GamesController < ApplicationController

  get '/games' do
    @current_user = current_user
    @users = User.all
    @archived_games = ArchivedGame.all
    erb :"games/list_games"
  end

  get '/games/new' do
    @current_user = verify_user
    @platforms = Platform.all
    @genres = Genre.all
    erb :"games/add_game"
  end

  get '/games/:slug' do
    @archived_game = ArchivedGame.find_by_slug(params[:slug])
    @users = User.all
    erb :"games/show_by_slug"
  end

  get '/games/:slug/edit' do
    @game = Game.find_by_slug(params[:slug])
    @platforms = Platform.all
    @genres = Genre.all
    erb :"games/edit_game"
  end
  # get '/game/:id' do
  #   @current_user = current_user
  #   erb :"games/show_by_id"
  # end

  # get '/games/:id/edit' do
  #   @current_user = verify_user
  # end

  post '/games' do
    @user = User.find_by_id(session[:id])
    if title == ""
      flash[:message] = "You must enter a title for the game you'd like to add to your Journal. Please try again."
      redirect to '/games/add_game'
    elsif params[:game][:platform_id] != "" || params[:game][:platform_id] != nil
      @game = Game.find_or_create_by(title: params[:title])
      @platform = Platform.find_by_id(params[:game][:platform_id])
      @user.games << @game if !@user.games.include?(@game)
    elsif params[:platform]
    elsif params[:game][:genre_id] != "" || params[:game][:genre_id] != nil
    elsif params[:genre]


    end

    redirect to "/users/show"
  end

  patch '/games/:slug' do

  end

  delete '/games/:slug/delete' do

  end

end
