class CreateDiners < ActiveRecord::Migration[5.0]
  def change
    create_table :diners do |t|
      t.string :name
      t.string :contact_info
      t.references :reservations, foreign_key: true

      t.timestamps
    end
  end
end
