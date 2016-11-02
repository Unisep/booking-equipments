class Stock < ApplicationRecord
  belongs_to :hardware

  validates :hardware, uniqueness: true

  def decrease!
    update(quantity: quantity -= 1)
  end
end
