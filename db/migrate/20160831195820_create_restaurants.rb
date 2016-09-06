class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      t.integer :phone_number
      t.integer :cuisine_id
      t.integer :seats
      t.integer :owner_id
      t.text :description
      t.time :opens_at
      t.time :closes_at

      t.timestamps null: false
    end
  end
end
