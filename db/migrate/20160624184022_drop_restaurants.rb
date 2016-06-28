class DropRestaurants < ActiveRecord::Migration
  def change
    drop_table :restaurants
  end
end
