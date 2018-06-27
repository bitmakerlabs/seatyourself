class AddPriceRangeColumnToRestaurants < ActiveRecord::Migration[5.2]
  def change
    add_column :restaurants, :price_range, :string
    add_column :restaurants, :neighbourhood, :string
  end
end
