class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def profile
    @events = current_user.events
    @invitations = current_user.invitations
  end
end
