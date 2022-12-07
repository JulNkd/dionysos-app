class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_one_attached :photo
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :invitations
  has_many :events, dependent: :destroy
  has_many :albums, dependent: :destroy

  def full_name
    "#{self.first_name} #{self.last_name}"
  end
end
