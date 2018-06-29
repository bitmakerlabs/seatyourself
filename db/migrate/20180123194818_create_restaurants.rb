class CreateRestaurants < ActiveRecord::Migration[5.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.text :description
      t.datetime :open_time
      t.datetime :close_time
      t.integer :capacity
      t.integer :price
      t.integer :user_id
      t.timestamps
    end
  end
end
