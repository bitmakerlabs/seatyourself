class ChangeGuestsBack < ActiveRecord::Migration[5.0]
  def change
    change_column :restaurants, :guests, :string
  end
end
