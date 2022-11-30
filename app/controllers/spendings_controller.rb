class SpendingsController < ApplicationController
  before_action :set_event, only: %i[new create show]

  def new
    @spending = Spending.new
  end

  def create
    @spending = Spending.new(spending_params)
    @spending.event = @event
    # seulement si event.budget.budget_restant > spendings params
    if @spending.save
      redirect_to event_spendings_path, status: :see_other
    else
      render :new, status: :unprocessable_entity
    end
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
