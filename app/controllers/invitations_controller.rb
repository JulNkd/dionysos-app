require 'twilio-ruby'

class InvitationsController < ApplicationController
  before_action :set_event
  # before_action :set_user, only: [ :show :index ]

  def index
    # @event = Event.find(params[:event_id])
    # @invitations = @event.invitations
    # trombinoscope de tous les invités
    # @event = Event.find(params[@<q@&é:event_id])
    # @invitation = current_user.invitations.find_by(event: @event)
    if params[:query].present?
      @invitations = Invitation.global_search(params[:query])
    else
      @invitations = Invitation.all
    end
    # @users = params[:invitation][:user]
    # @user = User.find(params[:user_id])
    # @invitation = Invitation.find(params[:id])
  end

  def show
  end

  def new
    @invitation = Invitation.new
    @users = User.all
  end

  def send_sms_to_contact
    account_sid = ENV['account_sid']
    auth_token = ENV['auth_token']

    @client = Twilio::REST::Client.new(account_sid, auth_token)

    @client.messages.create(
      from: ENV["TWILIO_PHONE_NUMBER"],
      to: "+33#{@user.phone_number}",
      body: "#{@invitation.event.user.first_name} vous invite à l'événement : #{@invitation.event.title} le #{@invitation.event.start_date.strftime("%d %B %Y")} ! Cliquez-ici pour participer : https://www.dionysos.click/events/#{@invitation.event.id}"
    )
  end

  def create
    # pour chaque instance de user séléctionné dans le form créer une invitation
    # @invitation.event = @event
    @users = params[:invitation][:user]
    @users.each do |selected|
      if !selected.empty?
        @invitation = Invitation.new(invitations_params)
        @user = User.find(selected)
        @invitation.user = @user
        @invitation.event = @event
        if @user.phone_number.present?
          @invitation.save!
          send_sms_to_contact
        end
      end
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
