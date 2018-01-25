class AddLoyaltyPointsColumnToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :loyalty_points, :integer, :default => 0
  end
end
