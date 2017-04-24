class CreateRestaurants < ActiveRecord::Migration[5.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.text :description
      t.string :address
      t.integer :restaurant_id
      t.text :menu
      t.integer :guests

      t.timestamps
    end
  end
end
