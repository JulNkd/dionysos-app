class BudgetsController < ApplicationController
  before_action :set_event, only: %i[new create show index]

  def new
    @budget = Budget.new
  end

  def index
    @budget = @event.budget
  end

  def create
    @budget = Budget.new(budget_params)
    @budget.event = @event
    # seulement si event.budget.budget_restant > spendings params
    if @budget.save
      redirect_to event_path(@event), status: :see_other
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def set_event
    @event = Event.find(params[:event_id])
  end

  def budget_params
    params.require(:budget).permit(:initial_budget, :remaining_budget)
  end
end
