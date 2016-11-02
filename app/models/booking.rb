class Booking < ApplicationRecord
  belongs_to :hardware
  belongs_to :user

  validates :hardware, presence: true
  validates :user, presence: true
  validates :book_at, presence: true
  validates :quantity, presence: true
  validates :ending_book_at, presence: true

  validate :check_stocks, if: 'hardware.present?'
  validate :check_dates

  before_create :book_now!

  private

  def check_stocks
    stock = hardware.stock

    return true if stock.present? && stock.quantity >= quantity

    errors.add(:hardware, :not_stock_enough)
  end

  def check_dates; end

  def book_now!
    ActiveRecord::Base.transaction do
      hardware.stock.decrease!
    end
  end
end
