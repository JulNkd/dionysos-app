class Event < ApplicationRecord
  has_many :spendings
  has_many :invitations
  has_many :users, through: :invitations
  has_one_attached :album
end
