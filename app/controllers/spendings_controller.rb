class SpendingsController < ApplicationController
  before_action :set_event, only: %i[new create show]

  def new
    @spending = Spending.new
  end

  def create
  end

  def index
    @spendings = Spending.all
  end

  private

  def set_event
    @event = Event.find(params[:event_id])
  end
end
