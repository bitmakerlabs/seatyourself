class AddColumnAndChangeColumn < ActiveRecord::Migration[5.2]
  def change
    add_column :restaurants, :closing_hours, :time
  end

  def change
    change_column :restaurants, :opening_hours, :time
  end

end
