class SpendingsController < ApplicationController
<<<<<<< HEAD
  before_action :set_event, only: %i[new create]
=======
  before_action :set_event, only: %i[new create show]
>>>>>>> 3f58b39a1b4dca74cfa9e517a3cad5670ef00c3a

  def new
    @spending = Spending.new
  end

  def create
<<<<<<< HEAD
  end

  def edit
  end

  def update
=======
    @spending = Spending.new(spending_params)
    @spending.event = @event
    #seulement si event.budget.budget_restant > spendings params
    if @spending.save
      redirect_to event_spendings_path, status: :see_other
    else
      render :new, status: :unprocessable_entity
    end
>>>>>>> 3f58b39a1b4dca74cfa9e517a3cad5670ef00c3a
  end

  def index
    @spendings = Spending.all
  end

  private

  def set_event
    @event = Event.find(params[:event_id])
  end
<<<<<<< HEAD
=======

  def spending_params
    params.require(:spending).permit(:amount, :category, :date)
  end
>>>>>>> 3f58b39a1b4dca74cfa9e517a3cad5670ef00c3a
end
