class ChangeColumnNameInRestaurant < ActiveRecord::Migration[5.0]
  def change
    rename_column :restaurants, :hours, :time_open
    add_column :restaurants, :time_close, :integer
  end
end
