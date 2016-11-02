class User < ApplicationRecord
  devise :database_authenticatable, :registerable, :recoverable, :rememberable,
         :validatable, :trackable

  has_many :bookings

  delegate :to_s, to: :name
end
