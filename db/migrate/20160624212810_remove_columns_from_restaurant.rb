class RemoveColumnsFromRestaurant < ActiveRecord::Migration
  def change
    remove_column :restaurants, :op_hours, :datetime
    remove_column :restaurants, :location, :string
    remove_column :restaurants, :reser_hours, :datetime
  end

  def add
    add_column :restaurants, :cuisine, :string
  end
end
