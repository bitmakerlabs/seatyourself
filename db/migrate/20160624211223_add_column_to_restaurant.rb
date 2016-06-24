class AddColumnToRestaurant < ActiveRecord::Migration
  def change
    add_column :restaurants, :diner_id, :integer
    add_column :restaurants, :start_time, :datetime
    add_column :restaurants, :end_time, :datetime
    add_column :restaurants, :street, :string
    add_column :restaurants, :city, :string
    add_column :restaurants, :postal, :string
  end

end
