class ChangeNameOfOwnerColumnInUser < ActiveRecord::Migration[5.0]
  def change
    rename_column :users, :owner?, :owner
  end
end
