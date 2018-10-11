class AddColumn < ActiveRecord::Migration[5.2]
  def change

      add_column :restaurants, :closing_hours, :time


  end
end
