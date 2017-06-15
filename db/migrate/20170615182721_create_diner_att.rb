class CreateDinerAtt < ActiveRecord::Migration[5.0]
  def change
    create_table :diners do |t|
      t.string :name
      t.integer :phone
      t.integer :reservation_id
    end
  end
end
