class FixFileTypeName < ActiveRecord::Migration
  def change
    rename_column :restaurants, :image_file_type, :image_file_name
  end
end
