class Budget < ApplicationRecord
  has_many :spendings
  has_one :budget through :spendings
end
