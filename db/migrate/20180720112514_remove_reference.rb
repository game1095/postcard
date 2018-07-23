class RemoveReference < ActiveRecord::Migration[5.1]
  def change
    remove_reference :stocks  , :cards ,  foreign_key: true
  end
end
