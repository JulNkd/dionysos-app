class SpendingsController < ApplicationController
  before_action :set_event, only: %i[new create]

  def new
    @spending = Spending.new
  end

  def create
  end

  def edit
  end

  def update
  end

  def index
    @spendings = Spending.all
  end

  private

  def set_event
    @event = Event.find(params[:event_id])
  end

  def spending_params
    params.require(:spending).permit(:amount, :category, :date)
  end
end
