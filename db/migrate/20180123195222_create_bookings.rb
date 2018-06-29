class CreateBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :bookings do |t|
      t.integer :user_id
      t.integer :restaurant_id
      t.datetime :time
      t.integer :n_people

      t.timestamps
    end
  end
end
