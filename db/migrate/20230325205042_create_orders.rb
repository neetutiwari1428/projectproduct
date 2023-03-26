class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.string :status
      t.references :merchant, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true
      t.references :itemcart, null: false, foreign_key: true

      t.timestamps
    end
  end
end
