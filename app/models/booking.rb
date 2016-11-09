class Booking < ApplicationRecord
  belongs_to :hardware
  belongs_to :user

  validates :hardware, :user, :book_at, :quantity, :ending_book_at,
    presence: true

  validate :check_stocks, on: :create
  validate :check_owner, on: :update
  validate :check_dates

  before_create :book_now!

  def refund!
    ActiveRecord::Base.transaction do
      update(status: false)
      hardware.stock.increase! quantity
    end
  end

  private

  def check_stocks
    stock = hardware.try(:stock)

    return true if stock.present? && stock.quantity >= quantity

    errors.add(:hardware, :not_stock_enough)
  end

  def check_dates
    return true if book_at < ending_book_at

    errors.add(:book_at, :dates_are_not_a_range)
  end

  def check_owner
    return true unless self.user_id_changed?

    errors.add(:base, :cant_change_user_id)
  end

  def book_now!
    ActiveRecord::Base.transaction do
      hardware.stock.decrease!
    end
  end
end
