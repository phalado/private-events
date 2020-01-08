class SessionsController < ApplicationController
  def create
    
    @login = User.find_by(id: params[:login][:id]) ||User.find_by(name: params[:login][:id])
    if @login
      session[:user_id] = @login.id 
      flash[:notice] = 'Logged in'
      redirect_to user_path(@login.id)
    end   
  end
end
