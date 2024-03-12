class User < ApplicationRecord
  has_many :items, through: :bookings
  has_many :reviews
  has_many :bookings
  validates :username, uniqueness: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end