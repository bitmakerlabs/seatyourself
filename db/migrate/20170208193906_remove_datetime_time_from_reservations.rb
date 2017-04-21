class RemoveDatetimeTimeFromReservations < ActiveRecord::Migration[5.0]
  def change
    remove_column(:reservations, :ttime, :datetime)
  end
end
