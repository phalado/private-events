class EventsController < ApplicationController

  def new
    @event = Event.new
    
  end
  def create
    current_user = User.find_by(id: session[:user_id])
    @event = current_user.events.build(description: params[:event][:description])
    if @event.save
      redirect_to event_path(@event.id)
    end
  end

  def show
    @event = Event.find_by(id: params[:id])
    @creator = User.find_by(id: @event.creator)
  end

  def index
    @events = Event.all
  end
end
