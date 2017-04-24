class AddImageToRestaurants < ActiveRecord::Migration[5.0]
  def change
    change_table :restaurants do |t|
      t.string :image
    end
  end
end
