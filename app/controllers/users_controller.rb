class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:info] = 'Account created.'
      redirect_to user_path(@user.id)
    else
      render 'new'
    end
  end

  def show
    @user = User.find(params[:id])
    @upcoming_events = []
    @prev_events = []
    @user.attendance.each do |at|
      ev = Event.find_by(id: at.attended_event)
      @upcoming_events << ev if ev.date >= DateTime.now
      @prev_events << ev if ev.date < DateTime.now
    end
  end

  def home; end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confimartion)
  end
end
