class AddAnotherColumnToRestaurant < ActiveRecord::Migration
  def change
    add_column :restaurants, :cuisine, :string
  end
end
