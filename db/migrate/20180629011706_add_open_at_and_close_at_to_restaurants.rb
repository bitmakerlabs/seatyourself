class AddOpenAtAndCloseAtToRestaurants < ActiveRecord::Migration[5.0]
  def change
    add_column :restaurants, :open_at, :integer
    add_column :restaurants, :close_at, :integer
  end
end
