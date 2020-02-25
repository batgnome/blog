class WelcomeController < ApplicationController
  def index
    @users = User.all
  end

  def login
    @user = User.find(params[:id])
    session[:user_id ] = @user.id
    redirect_to users_path
  end

  def logout
    session.delete :user_id
    redirect_to users_path
  end

end
