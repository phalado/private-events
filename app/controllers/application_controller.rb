class ApplicationController < ActionController::Base
  def log_in(user)
    @current_user = User.find_by(id: user.id)
    session[:user_id] = user.id
  end
end
