class CreateStock < ActiveRecord::Migration[5.1]
  def change
    create_table :stocks do |t|
      t.string :name
      t.integer :quantity 
      t.text :description

      t.timestamps
      
    end
  end
end
