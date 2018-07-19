class ChangeStatusFromCards < ActiveRecord::Migration[5.1]
  def change
    change_column :cards, :status, :string , default: 'Pending'
  end
end
