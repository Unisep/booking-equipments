class AddEndingBookAtToBookings < ActiveRecord::Migration[5.0]
  def change
    add_column :bookings, :ending_book_at, :datetime
  end
end
