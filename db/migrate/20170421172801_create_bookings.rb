class CreateBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :bookings do |t|
      t.integer :guests
      t.date :date
      t.integer :time

      t.timestamps
    end
  end
end
