class EventsController < ApplicationController
  def new
    @event = Event.new
  end

  def create
    current_user = User.find_by(id: session[:user_id])
    @event = current_user.events.build(description: params[:event][:description], date: params[:event][:date])
    redirect_to event_path(@event.id) if @event.save
  end

  def show
    @event = Event.find_by(id: params[:id])
    @creator = User.find_by(id: @event.creator)
  end

  def index
    @events = Event.all
    @past_events = Event.past
    @upcoming_events = Event.upcoming
  end
end
