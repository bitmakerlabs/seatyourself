class Fixguests < ActiveRecord::Migration[5.0]
  def change
    change_column :restaurants, :guests, :integer
  end
end
