class Booking < ApplicationRecord
  belongs_to :hardware
  belongs_to :user

  validates :hardware, presence: true
  validates :user, presence: true
  validates :book_at, presence: true
  validates :quantity, presence: true
  validates :ending_book_at, presence: true

  validate :can_books?

  # before_create :book_now!

  def can_books?
    # não tem estoque.
    #
  end

  def book_now!
  end

  # ao fazer uma reserva:
  # diiminuir estoque
  # gerar nova reserva da pessoa + equipamento + datas
end
