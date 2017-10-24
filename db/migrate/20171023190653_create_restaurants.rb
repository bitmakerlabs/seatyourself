class CreateRestaurants < ActiveRecord::Migration[5.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.integer :open_time
      t.integer :close_time
      t.integer :seats
      t.string :address
      t.integer :user_id

      t.timestamps
    end
  end
end
