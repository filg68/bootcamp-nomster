class ChangeAddressColumnType < ActiveRecord::Migration[5.2]
  def change
    change_column :places, :address, :text
  end
end
