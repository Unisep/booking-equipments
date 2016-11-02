class AddQuantityToBookings < ActiveRecord::Migration[5.0]
  def change
    add_column :bookings, :quantity, :decimal
  end
end
