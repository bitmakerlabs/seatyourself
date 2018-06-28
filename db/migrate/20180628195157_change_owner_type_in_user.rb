class ChangeOwnerTypeInUser < ActiveRecord::Migration[5.0]
  def change
    change_column :users, :owner, :boolean
  end
end
