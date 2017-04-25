class RemoveRestaurantId < ActiveRecord::Migration[5.0]
  def change
    change_table :restaurants do |t|
      t.remove :restaurant_id
    end
  end
end
