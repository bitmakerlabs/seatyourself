class AddColumnsToReservations < ActiveRecord::Migration
  def change
    add_column :reservations, :date, :datetime
    add_column :reservations, :instructions, :text
  end
end
