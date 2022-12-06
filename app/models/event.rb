class Event < ApplicationRecord
  has_many :spendings, dependent: :destroy
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  has_many :invitations
  has_many :users, through: :invitations
  has_many :albums
  has_one_attached :photo
  has_one :budget, dependent: :destroy
  belongs_to :user
end
