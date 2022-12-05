class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def profile
<<<<<<< HEAD
    @events = current_user.events
    @invitations = current_user.invitations
=======
    @user = current_user
>>>>>>> bdada3620f958c65d1ab389793173ede2e845bfc
  end
end
