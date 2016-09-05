class ChangeRestaurauntPhoneNumberToString < ActiveRecord::Migration
  def change
    change_column :restaurants, :phone_number, :string
  end
end
