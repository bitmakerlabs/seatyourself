class CreateRestaurants < ActiveRecord::Migration[5.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      t.integer :phone_number
      t.string :email
      t.integer :capacity
      t.integer :hours
      t.string :cuisine
      t.string :url
      t.text :summary
      t.integer :time_slot
      t.integer :price

      t.timestamps
    end
  end
end
