class EventsController < ApplicationController
  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    @event.user = current_user
    if @event.save!
      redirect_to event_path(@event)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @event = Event.find(params[:id])
    # @invitation = current_user.invitations.find_by(event: @event)
    @invitation = current_user.invitations.find_by(event: @event)
    @marker =
      {
        lat: @event.latitude,
        lng: @event.longitude
      }
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    @event.update(event_params)
    redirect_to event_path(@event)
  end

  def photos
    @event = Event.find(params[:id])
    @albums = @event.albums
  end

  private

  def event_params
    params.require(:event).permit(:start_date, :end_date, :category, :description, :address, :title, :photo)
  end
end
