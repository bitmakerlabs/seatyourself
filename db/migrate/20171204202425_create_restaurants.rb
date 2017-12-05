class CreateRestaurants < ActiveRecord::Migration[5.0]
  def change
    create_table :restaurants do |t|
      t.integer :capacity
      t.string :address
      t.string :name
      t.time :close_time
      t.time :open_time
      t.integer :user_id

      t.timestamps
    end
  end
end
