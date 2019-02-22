class CreateReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|
      t.integer :restaurant_id
      t.integer :user_id
      t.string :time
      t.integer :number_of_guests

      t.timestamps
    end
  end
end
