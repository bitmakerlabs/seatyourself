class ChangeTimeToDateTime < ActiveRecord::Migration[5.0]
  def change
  	change_column :restaurants, :close_time, :datetime
  	change_column :restaurants, :open_time, :datetime
  end
end
