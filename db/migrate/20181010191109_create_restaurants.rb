class CreateRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants do |t|
      t.string :address
      t.string :city
      t.string :price_range
      t.text :summary
      t.string :menu
      t.string :opening_hours
      t.integer :user_id
      t.integer :capacity 

      t.timestamps
    end
  end
end
