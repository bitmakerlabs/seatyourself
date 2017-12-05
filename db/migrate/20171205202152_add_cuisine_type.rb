class AddCuisineType < ActiveRecord::Migration[5.0]
  def change
    add_column :restaurants, :cuisine, :string
    add_column :restaurants, :rating, :integer
  end
end
