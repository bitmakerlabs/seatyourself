class CreateRefactorReservationTimes < ActiveRecord::Migration[5.2]
  def change
      add_column :restaurants, :mon_open_from, :integer
      add_column :restaurants, :mon_open_until, :integer
      add_column :restaurants, :tues_open_from, :integer
      add_column :restaurants, :tues_open_until, :integer
      add_column :restaurants, :wed_open_from, :integer
      add_column :restaurants, :wed_open_until, :integer
      add_column :restaurants, :thurs_open_until, :integer
      add_column :restaurants, :thurs_open_from, :integer
      add_column :restaurants, :fri_open_from, :integer
      add_column :restaurants, :fri_open_until, :integer
      add_column :restaurants, :sat_open_from, :integer
      add_column :restaurants, :sat_open_until, :integer
      add_column :restaurants, :sun_open_from, :integer
      add_column :restaurants, :sun_open_until, :integer 
    end
end
