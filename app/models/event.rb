class Event < ApplicationRecord
  belongs_to :location

  has_many :spendings
  has_many :invitations
end
