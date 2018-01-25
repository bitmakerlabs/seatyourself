class CreateReservations < ActiveRecord::Migration[5.0]
  def change
    create_table :reservations do |t|

      # this is the proper way
      # t.belongs_to :user
      # t.belongs_to :restaurant
       
      t.string :user_id
      t.string :restaurant_id
      t.datetime :when
      t.integer :number_of_people

      t.timestamps
    end
  end
end
