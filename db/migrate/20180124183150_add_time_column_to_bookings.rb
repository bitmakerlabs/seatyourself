class AddTimeColumnToBookings < ActiveRecord::Migration[5.0]
  def up
    change_table :bookings do |t|
      t.rename :time, :day
      t.integer :time
    end
    change_column :bookings, :day, :date
  end

  def down
    change_table :bookings do |t|
      t.remove :time
      t.rename :day, :time
    end
    change_column :bookings, :time, :datetime
  end
end
