class CreateReservations < ActiveRecord::Migration[5.0]
  def change
    create_table :reservations do |t|
      t.integer :date
      t.integer :time
      t.integer :party_size
      t.references :diner, foreign_key: true
      t.references :restaurant, foreign_key: true

      t.timestamps
    end
  end
end
