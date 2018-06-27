class CreateReservations < ActiveRecord::Migration[5.0]
  def change
    create_table :reservations do |t|
      t.integer :user_id
      t.integer :restaurant_id
      t.integer :partysize
      t.date :date
      t.time :time

      t.timestamps
    end
  end
end
