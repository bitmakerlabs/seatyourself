class RemoveTTimeFromRestaurants < ActiveRecord::Migration[5.0]
  def change
    remove_column(:restaurants, :ttime, :datetime)
  end
end
