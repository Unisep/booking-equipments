class CreateBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :bookings do |t|
      t.datetime :book_at
      t.references :hardware, foreign_key: true

      t.timestamps
    end
  end
end
