class AddColumnsToRestaurant < ActiveRecord::Migration[5.2]
  def change
    add_column :restaurants, :open, :time
    add_column :restaurants, :close, :time
  end
end
