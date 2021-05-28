class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.decimal :price, precision: 5, scale: 2
      t.integer :status
      t.references :product_category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
