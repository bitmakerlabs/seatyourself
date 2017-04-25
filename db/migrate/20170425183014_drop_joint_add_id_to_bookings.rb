class DropJointAddIdToBookings < ActiveRecord::Migration[5.0]
  def change
    add_column :bookings, :restaurant_id, :integer
    drop_table :bookings_restaurants
    remove_column :bookings, :booking_id
  end

end
