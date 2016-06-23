class CreateDiners < ActiveRecord::Migration
  def change
    create_table :diners do |t|
      t.string :name
      t.string :email
      t.string :phone_number
      t.string :password_digest

      t.timestamps null: false
    end
  end
end
