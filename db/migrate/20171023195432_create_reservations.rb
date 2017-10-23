class CreateReservations < ActiveRecord::Migration[5.0]
  def change
    create_table :reservations do |t|
      t.integer :restaurant_id, null: false
      t.datetime :reserved_time, null: false

      t.timestamps
    end
  end
end
