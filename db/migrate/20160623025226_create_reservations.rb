class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.integer :number_of_people
      t.integer :hour
      t.integer :restaurant_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
