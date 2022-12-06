class Event < ApplicationRecord
  has_many :spendings, dependent: :destroy
  has_many :invitations
  has_many :users, through: :invitations
  has_many :albums
  has_one_attached :photo
  has_one :budget, dependent: :destroy
  belongs_to :user
end
