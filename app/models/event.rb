class Event < ApplicationRecord
  has_many :spendings
  has_many :invitations
  has_many :albums
  has_one_attached :photo
end
