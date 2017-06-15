class CreateRestaurants < ActiveRecord::Migration[5.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.text :address
      t.integer :capacity
      t.integer :open_time
      t.integer :close_time
      t.references :reservations, foreign_key: true
      t.references :owner, foreign_key: true

      t.timestamps
    end
  end
end
