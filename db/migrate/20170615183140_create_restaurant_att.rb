class CreateRestaurantAtt < ActiveRecord::Migration[5.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.text :address
      t.integer :capacity
      t.integer :opening_time
      t.integer :closing_time
      t.integer :reservation_id
      t.integer :owner_id
    end
  end
end
