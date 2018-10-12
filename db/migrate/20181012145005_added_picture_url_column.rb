class AddedPictureUrlColumn < ActiveRecord::Migration[5.2]
  def change
    add_column :restaurants, :picture_url, :string
  end
end
