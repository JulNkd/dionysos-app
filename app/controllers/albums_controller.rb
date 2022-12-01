class AlbumsController < ApplicationController
  def new
    @event = Event.find(params[:event_id])
    @album = Album.new
  end

  def create
    @album = Album.new(album_params)
    @event = Event.find(params[:event_id])
    @album.user = current_user
    @album.event = @event
    if @album.save!
      redirect_to photos_event_path(@event)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def album_params
    params.require(:album).permit(photos: [])
  end
end
