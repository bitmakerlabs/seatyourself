class CreateRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.datetime :open_from
      t.datetime :open_until
      t.integer :capacity
      t.integer :max_reservation_size
      t.integer :price_range
      t.text :summary
      t.integer :user_id
      t.string :address
      t.string :neighbourhood
      t.string :category

      t.timestamps
    end
  end
end
