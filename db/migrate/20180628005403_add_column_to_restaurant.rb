class AddColumnToRestaurant < ActiveRecord::Migration[5.0]
  def change
    add_column :restaurants, :phone, :string
  end
end
