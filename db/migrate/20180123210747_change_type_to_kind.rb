class ChangeTypeToKind < ActiveRecord::Migration[5.0]
  def change
    change_table :users do |t|
      t.rename :type, :kind
    end
  end
end
