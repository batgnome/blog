class ApplicationController < ActionController::Base
  before_action :set_user

  def set_user
    if session[1]
      @current_user = User.find(session[1])
    end
  end
end
