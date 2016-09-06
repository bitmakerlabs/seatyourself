class AddPaperclipFieldsToRestaurant < ActiveRecord::Migration
  def change
    add_column :restaurants, :image_file_type, :string
    add_column :restaurants, :image_content_type, :string
    add_column :restaurants, :image_file_size, :integer
    add_column :restaurants, :image_updated_at, :datetime
  end
end
