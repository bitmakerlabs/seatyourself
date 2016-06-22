class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      t.text :description
      t.integer :seats
      t.integer :open
      t.integer :close

      t.timestamps null: false
    end
  end
end
