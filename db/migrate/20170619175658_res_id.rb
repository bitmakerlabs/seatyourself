class ResId < ActiveRecord::Migration[5.0]
  def change
    add_column :reservations, :reservation_id, :integer
  end
end
