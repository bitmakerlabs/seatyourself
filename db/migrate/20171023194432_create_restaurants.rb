class CreateRestaurants < ActiveRecord::Migration[5.0]
  def change
    create_table :restaurants do |t|
      t.string :name, null: false
      t.string :address, null: false
      t.string :neighborhood, null: false
      t.string :price_range, null: false
      t.string :menu, null: false
      t.text :summary, null: false
      t.datetime :time_slots

      t.timestamps
    end
  end
end
