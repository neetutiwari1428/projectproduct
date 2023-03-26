class CreateItemcarts < ActiveRecord::Migration[7.0]
  def change
    create_table :itemcarts do |t|
      t.integer :qnty
      t.string :size
      t.references :product, null: false, foreign_key: true
      t.references :merchant, null: false, foreign_key: true

      t.timestamps
    end
  end
end
