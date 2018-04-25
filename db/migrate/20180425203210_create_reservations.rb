class CreateReservations < ActiveRecord::Migration[5.0]
  def change
    create_table :reservations do |t|
      t.integer :time
      t.date :date
      t.integer :user_id
      t.integer :restaurant_id

      t.timestamps
    end
  end
end
