class CreateRestaurants < ActiveRecord::Migration[5.0]
  def change
    create_table :restaurants do |t|
      t.string :address
      t.string :neighbourhood
      t.integer :price_range
      t.text :summary
      t.text :menu
      t.datetime :time_slots

      t.timestamps
    end
  end
end
