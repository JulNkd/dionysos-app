class Event < ApplicationRecord
  has_many :spendings
  has_many :invitations
  has_many_attached :photos
end
