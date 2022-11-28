class Spending < ApplicationRecord
  belongs_to :event
  belongs_to :budget
end
