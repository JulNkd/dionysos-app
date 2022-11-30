class Budget < ApplicationRecord
  belongs_to :event

  def set_defaults
    initial_budget == 0
  end
end
