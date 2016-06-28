class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :location
      t.datetime :op_hours
      t.text :about
      t.integer :capacity
      t.string :phone
      t.datetime :reser_hours

      t.timestamps null: false
    end
  end
end
