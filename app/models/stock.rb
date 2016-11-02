class Stock < ApplicationRecord
  belongs_to :hardware

  validates :hardware, uniqueness: true
end
