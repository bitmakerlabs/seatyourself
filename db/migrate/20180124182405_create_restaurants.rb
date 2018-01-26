class CreateRestaurants < ActiveRecord::Migration[5.0]
  def change
    create_table :restaurants do |t|

      t.string :name
      t.string :address
      t.integer :capacity
      t.string :menu
      t.text :summary
      t.integer :price
      # t.integer :owner_id
      # t.integer :open_time
      # t.integer :close_time

      t.timestamps
    end
  end
end
