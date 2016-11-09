class AddStatusToBookings < ActiveRecord::Migration[5.0]
  def change
    # true to borrowed
    # false to refunded
    add_column :bookings, :status, :boolean, default: true
  end
end
