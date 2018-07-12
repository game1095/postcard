class CreateCards < ActiveRecord::Migration[5.1]
  def change
    create_table :cards do |t|
      t.string :full_name
      t.string :address
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
