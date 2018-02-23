require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    enable :sessions
    set :session_secrete, "g4m3z4LyF3"
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  use Rack::Flash

  helpers do
    def current_user
      @current_user ||= User.find_by_id(session[:id]) if session[:id]
    end

    def logged_in?
      !current_user.nil?
    end

    def verify_user
      if logged_in?
        current_user
      else
        flash[:message] = "We apologize, but you must log in to view the requested content."
        redirect to "/login"
      end
    end

    def logout!
      session.clear
    end
  end

  get '/' do
    @current_user = current_user
    @users = User.all
    erb :index
  end

  get '/signup' do
    if logged_in?
      redirect to "/users/show"
    else
      erb :"users/signup"
    end
  end

  get '/login' do
    if logged_in?
      redirect to "/users/show"
    else
      erb :"/users/login"
    end
  end

  get '/logout' do
    if logged_in?
      logout!
      flash[:message] = "Successfully logged out."
      redirect to "/login"
    else
      redirect to "/"
    end
  end

  post '/signup' do
    if User.find_by(username: params[:username]) || User.find_by(email: params[:email])
      flash[:message] = "There is already an account with the username and/or email that you entered. Please try again."
      redirect to "/signup"
    elsif params[:username] != "" && params[:email] != "" && params[:password] != ""
      @user = User.create(params)
      session[:id] = @user.id
      redirect to "/users/#{@user.slug}"
    else
      flash[:message] = "You must enter a username, email, and password in order to create an account. Please try again."
      redirect to "/signup"
    end
  end

  post '/login' do
    @user = User.find_by(username: params[:username])
    if @user.nil?
      flash[:message] = "Could not find an account with the username you entered. Please try again."
      redirect to "/login"
    elsif @user.authenticate(params[:password])
      session[:id] = @user.id
      redirect to "/users/#{@user.slug}"
    else
      flash[:message] = "You have entered an incorrect username and/or password. Please try again."
      redirect to "/login"
    end
  end

end
