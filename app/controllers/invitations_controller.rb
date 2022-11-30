class InvitationsController < ApplicationController
  before_action :set_event
  # before_action :set_user

  def index
    @invitation.event = @event
    # trombinoscope de tous les invités
    @event.users
  end

  def show
    # profil de l'invité
    @user = User.find(params[:user_id])
  end

  def new
    @invitation = Invitation.new
  end

  def create
    @invitation = Invitation.new(invitation_params)
    @invitation.event = @event
    @invitation.save
    # No need for app/views/invitations/create.html.erb
    redirect_to event_path(@event)
  end

  def edit
    @invitation = Invitation.find(params[:id])
  end

  def update
    @invitation = Invitation.find(params[:id])
    @invitation.update(invitation_params)
    # No need for app/views/invitations/update.html.erb
    redirect_to invitation_path(@invitation)
  end

  private

  # def set_user
  #   @user = User.find(params[:user_id])
  # end

  def set_event
    @event = Event.find(params[:event_id])
  end

  def invitations_params
    params.require(:invitation).permit(:status, :partner, :comment)
  end
end
