class Event < ApplicationRecord
  has_many :spendings
  has_many :invitations
  has_many :users, through: :invitations
  has_many :albums
  has_one_attached :photo
  has_one :budget
  belongs_to :user
end
