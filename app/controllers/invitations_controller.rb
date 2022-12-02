class InvitationsController < ApplicationController
  before_action :set_event
  # before_action :set_user, only: [ :show :index ]

  def index
    # trombinoscope de tous les invités
    @event.users
    # @users = params[:invitation][:user]
    # @user = User.find(params[:user_id])
    # @invitation = Invitation.find(params[:id])
    @invitation = current_user.invitations.find_by(event: @event)
  end

  def show
  end

  def new
    @invitation = Invitation.new
    @users = User.all
  end

  def create
    # pour chaque instance de user séléctionné dans le form créer une invitation
    # @invitation.event = @event
    @users = params[:invitation][:user]
    @users.each do |selected|
      @invitation = Invitation.new(invitations_params)
      @user = User.find_by(first_name: selected)
      @invitation.user = @user
      @invitation.event = @event
      @invitation.save
    end
    redirect_to event_path(@event)
  end

  def edit
    @invitation = Invitation.find(params[:id])
  end

  def update
    @invitation = Invitation.find(params[:id])
    @invitation.update(invitations_params)
    # No need for app/views/invitations/update.html.erb
    redirect_to event_path(@event)
  end

  private

  # def set_user
  #   @user = User.find(params[:user_id])
  # end

  def set_event
    @event = Event.find(params[:event_id])
  end

  def invitations_params
    params.require(:invitation).permit(:user_id, :status, :partner, :comment)
  end
end
