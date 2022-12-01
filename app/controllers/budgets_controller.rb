class BudgetsController < ApplicationController
  before_action :set_event, only: %i[new create update edit]

  def new
    @budget = Budget.new
  end

  def create
    @budget = Budget.new(budget_params)
    @budget.event = @event
    @budget.remaining_budget = @budget.initial_budget
    # seulement si event.budget.budget_restant > spendings params
    if @budget.save!
      redirect_to event_path(@event), status: :see_other
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @budget = @event.budget
  end

  def update
    @budget = @event.budget
    @spendings = @event.spendings.map(&:amount).sum
    @budget.update!(budget_params)
    @budget.remaining_budget = @budget.initial_budget - @spendings
    @budget.save!
    redirect_to event_path(@event)
  end

  private


  def set_event
    @event = Event.find(params[:event_id])
  end

  def budget_params
    params.require(:budget).permit(:initial_budget, :remaining_budget)
  end
end
