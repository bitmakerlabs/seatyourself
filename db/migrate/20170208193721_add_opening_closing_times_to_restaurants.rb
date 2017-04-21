class AddOpeningClosingTimesToRestaurants < ActiveRecord::Migration[5.0]
  def change
    add_column(:restaurants, :opening, :integer)
    add_column(:restaurants, :closing, :integer)
  end
end
