class RemoveTimeSlotsFromRestaurants < ActiveRecord::Migration[5.0]
  def change
    remove_column :restaurants, :time_slots, :datetime
  end
end
