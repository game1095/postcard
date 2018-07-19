class ChangePhoneFromCards < ActiveRecord::Migration[5.1]
  def change
    change_column :cards, :phone, :string
  end
end
