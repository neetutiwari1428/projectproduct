class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.float  :price
      t.string :status
      t.references :categorie, null: false, foreign_key: true
      t.string :image
      t.string :description

      t.timestamps
    end
  end
end
