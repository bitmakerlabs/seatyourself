class CreateUserId < ActiveRecord::Migration[5.0]
  def change
    change_table :users do |t|
      t.integer :user_id
    end
  end
end
