class ReservationTime < ActiveRecord::Migration[5.0]
  def up
    change_table :reservations do |t|
      t.date    :date
      t.integer :time
      t.remove  :when
    end
  end

  def down
    change_table :reservations do |t|
      t.remove   :date
      t.remove   :time
      t.datetime :when
    end
  end
end
