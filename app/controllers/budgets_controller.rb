class BudgetsController < ApplicationController
  def new
    @budget = Budget.new
  end

  def index
    @budget = Budget.all
  end

  def create
  end
end
