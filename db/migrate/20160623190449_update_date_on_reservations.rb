class UpdateDateOnReservations < ActiveRecord::Migration
  def up
    change_column :reservations, :date, :datetime
  end

  def down
    change_column :reservations, :date, :decimal
  end
end
