class AddOpenTimeToRestaurants < ActiveRecord::Migration[5.0]
  def change
     add_column :restaurants, :open_time, :integer
     add_column :restaurants, :close_time, :integer
  end
end
