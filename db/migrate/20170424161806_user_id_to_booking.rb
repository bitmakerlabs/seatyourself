class UserIdToBooking < ActiveRecord::Migration[5.0]
  def change
    change_table :bookings do |t|
      t.integer :user_id
    end
  end
end
