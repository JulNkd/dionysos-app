class SpendingsController < ApplicationController
  before_action :set_event, only: %i[new create show index]
  before_action :set_budget, only: %i[create]

  def new
    @spending = Spending.new
  end

  def create
    @spending = Spending.new(spending_params)
    @spending.event = @event
    # seulement si event.budget.budget_restant > spendings params
    if @spending.save
      redirect_to event_path(@event), status: :see_other
      @budget.remaining_budget -= @spending.amount
      @budget.save!
    else
      render :new, status: :unprocessable_entity
    end
  end

  def index
    @spendings = @event.spendings
  end

  private

  def set_event
    @event = Event.find(params[:event_id])
  end

  def set_budget
    @budget = @event.budget
  end

  def spending_params
    params.require(:spending).permit(:amount, :category, :date)
  end
end
