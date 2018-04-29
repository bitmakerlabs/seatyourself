class CreateRestaurants < ActiveRecord::Migration[5.0]
  def change
    create_table :restaurants do |t|
      t.text :address
      t.text :neighbourhood
      t.integer :price_range
      t.text :summary
      t.string :menu
      t.integer :time_slots

      t.timestamps
    end
  end
end
