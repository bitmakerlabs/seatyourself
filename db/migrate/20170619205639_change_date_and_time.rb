class ChangeDateAndTime < ActiveRecord::Migration[5.0]
  def change
    change_column :reservations, :date, :datetime
    remove_column :reservations, :res_id
    remove_column :reservation_id
  end
end
