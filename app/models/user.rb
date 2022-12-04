class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_one_attached :photo
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :invitations
  has_many :events
  has_many :albums

  include PgSearch::Model
  pg_search_scope :search_by_first_name_and_last_name,
                  against: %i[first_name last_name],
                  using: {
                  tsearch: { prefix: true }
    }
end
