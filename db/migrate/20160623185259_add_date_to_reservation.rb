class AddDateToReservation < ActiveRecord::Migration
  def change
    add_column :reservations, :date, :number
  end
end
