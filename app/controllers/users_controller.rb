class UsersController < ApplicationController

  get '/users/:slug' do
    @current_user = current_user
    @user = User.find_by_slug(params[:slug])
    erb :"users/show"
  end
end
