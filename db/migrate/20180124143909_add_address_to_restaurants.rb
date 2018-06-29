class AddAddressToRestaurants < ActiveRecord::Migration[5.0]
  def change
    change_table :restaurants do |t|
      t.string :address
    end
  end
end
