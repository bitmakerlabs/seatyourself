class EditReservationColumn < ActiveRecord::Migration[5.2]
  def change
    change_column :reservations, :time, :time

  end
end
