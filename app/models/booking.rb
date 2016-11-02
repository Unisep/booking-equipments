class Booking < ApplicationRecord
  belongs_to :hardware

  validates :hardware, presence: true
end
