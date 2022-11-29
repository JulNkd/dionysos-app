class Event < ApplicationRecord
  has_many :spendings
  has_many :invitations
end
