class WelcomeController < ApplicationController
  def index
    @users = User.all
  end

  def login
    @user = User.find(params[:id])
    session[:user_id ] = @user.id
    redirect_to articles_path
  end

end
