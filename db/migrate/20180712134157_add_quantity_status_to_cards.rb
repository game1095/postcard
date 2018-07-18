class AddQuantityStatusToCards < ActiveRecord::Migration[5.1]
  def change
    add_column :cards , :quantity , :string
    add_column :cards , :status , :string
  end
end
