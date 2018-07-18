class AddPhoneStatusToCards < ActiveRecord::Migration[5.1]
  def change
    add_column :cards, :phone, :integer , max: 10
  end
end
