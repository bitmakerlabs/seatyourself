class CreateReservationAtt < ActiveRecord::Migration[5.0]
  def change
    create_table :reservations do |t|
      t.integer :date
      t.integer :time
      t.integer :diner_id
      t.integer :party_size
      t.integer :restaurant_id
    end
  end
end
