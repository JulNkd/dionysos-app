class Budget < ApplicationRecord
  has_many :spendings
  belongs_to :event
end
