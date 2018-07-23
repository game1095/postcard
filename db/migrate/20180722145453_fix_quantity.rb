class FixQuantity < ActiveRecord::Migration[5.1]
  def change
    rename_column :stocks , :quantity , :amount
    
  end
end
