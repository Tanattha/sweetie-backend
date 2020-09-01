class CreateCartProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :cart_products do |t|
      t.integer :cart_id, foreign_key: true
      t.integer :product_id, foreign_key: true
      t.timestamps
    end
  end
end
