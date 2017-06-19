class ChangeNumber < ActiveRecord::Migration[5.0]
  def change
    change_column :restaurants, :phone_number, :number
  end
end
