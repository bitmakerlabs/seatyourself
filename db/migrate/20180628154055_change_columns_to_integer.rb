class ChangeColumnsToInteger < ActiveRecord::Migration[5.2]
  def change
    change_column :restaurants, :open, :integer
    change_column :restaurants, :close, :integer
  end
end
