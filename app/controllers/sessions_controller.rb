class SessionsController < ApplicationController
  def create
    login = User.find_by(id: params[:id]) || User.find_by(name: params[:id])
    if login
      session[:user_id] = login.id
      flash[:notice] = 'Logged in'
      redirect_to login
    end
  end

  def destroy
    session[:user_id] = nil
    @current_user = nil
    flash[:notice] = 'Logged out.'
    redirect_to root_path
  end
end
