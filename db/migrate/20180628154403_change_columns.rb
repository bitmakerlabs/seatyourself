class ChangeColumns < ActiveRecord::Migration[5.2]
  def change
    change_column :restaurants, :open, :time
    change_column :restaurants, :close, :time
  end
end
