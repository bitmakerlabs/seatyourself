class AddRestId < ActiveRecord::Migration[5.0]
  def change
    change_table :restaurants do |t|
      t.string :restaurant_id
    end
  end
end
