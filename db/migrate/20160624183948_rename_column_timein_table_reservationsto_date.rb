class RenameColumnTimeinTableReservationstoDate < ActiveRecord::Migration
  def change
    rename_column :reservations, :time, :date
  end
end
