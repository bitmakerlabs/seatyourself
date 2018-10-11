class AddMinMaxPartySizeToRestaurant < ActiveRecord::Migration[5.2]
  def change
    add_column :restaurants, :min_party_size, :integer
    add_column :restaurants, :max_party_size, :interger
  end
end
