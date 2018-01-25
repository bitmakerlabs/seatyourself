class CreateOwners < ActiveRecord::Migration[5.0]
  def change
    create_table :owners do |t|

      t.string :email
      t.string :password_digest
      t.string :name
      t.string :phone

      t.timestamps
    end
  end
end
