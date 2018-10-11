class ChangeOpeningHours < ActiveRecord::Migration[5.2]
  def change
    change_column :restaurants, :opening_hours, :time
    add_column :restaurants, :closing_hours, :time
  end
end
