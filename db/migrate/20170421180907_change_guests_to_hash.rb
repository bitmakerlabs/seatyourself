class ChangeGuestsToHash < ActiveRecord::Migration[5.0]
  def change
    change_column :restaurants, :guests, :hash
  end
end
