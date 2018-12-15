class CreateRefactorReservationTimes < ActiveRecord::Migration[5.2]
  def change
      add_column :restaurant, :mon_open_from, :integer
      add_column :tues_open_from, :integer
      add_column :wed_open_from, :integer
      add_column :thurs_open_from, :integer
      add_column :fri_open_from, :integer
      add_column :sat_open_from, :integer
      add_column :sun_open_from, :integer
      add_column :mon_open_until, :integer
      add_column :tues_open_until, :integer
      add_column :wed_open_until, :integer
      add_column :thurs_open_until, :integer
      add_column :fri_open_until, :integer
      add_column :sat_open_until, :integer
      add_column :sun_open_until, :integer 
    end
end
