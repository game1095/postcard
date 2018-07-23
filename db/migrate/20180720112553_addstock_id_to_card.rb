class AddstockIdToCard < ActiveRecord::Migration[5.1]
  def change
    add_reference :cards  , :stocks ,  foreign_key: true
  end
end

