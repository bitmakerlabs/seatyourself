class  UpdatingReservations< ActiveRecord::Migration
  def change
    add_column :reservations, :time, :integer
    # add_column :reservations, :user_id, :integer
    add_reference :reservations, :user, index: true, foreign_key: true
    add_reference :reservations, :restaurant, index: true, foreign_key: true
  end
end
