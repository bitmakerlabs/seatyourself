class CreateBookingsRestaurants < ActiveRecord::Migration[5.0]
  def change
    create_table :bookings_restaurants do |t|
      t.integer :booking_id
      t.integer :restaurant_id
    end
  end
end
