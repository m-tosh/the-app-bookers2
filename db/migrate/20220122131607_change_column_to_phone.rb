class ChangeColumnToPhone < ActiveRecord::Migration[5.2]
  def change
    change_column :phones, :os_type, :integer, default: 0, null: false, limit: 1
  end
end
