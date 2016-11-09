class Stock < ApplicationRecord
  belongs_to :hardware

  validates :hardware, uniqueness: true

  def decrease!
    self.quantity ||= 0
    self.quantity -= 1

    save!
  end

  def increase!(value)
    self.quantity ||= 0
    self.quantity += value

    save!
  end
end
