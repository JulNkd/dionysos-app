class Album < ApplicationRecord
  belongs_to :event
  belongs_to :user
  has_many_attached :photos
end
