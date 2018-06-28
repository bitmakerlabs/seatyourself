class ChangedateTodatetimeOnReservations < ActiveRecord::Migration[5.2]
  def down
    change_column :reservations, :date, :datetime
  end

  def up
    change_column :reservations, :date, :date
  end



end
