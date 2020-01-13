class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:info] = 'Account created.'
               
      log_in(@user)
      redirect_to user_path(@user.id)
    else
      render 'new'
    end
  end

  def show
    @user = User.find(params[:id])
    @upcoming_events = Event.upcoming_events
    @prev_events = Event.past
    
  end

  def home; end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confimartion)
  end
end
