class AddBookingId < ActiveRecord::Migration[5.0]
  def change
    change_table :bookings do |t|
      t.integer :booking_id
    end
    change_column :restaurants, :restaurant_id, :integer
  end
end
