class CreateCartItems < ActiveRecord::Migration[6.0]
  def change
    create_table :cart_items do |t|
      t.integer :cart_id, foreign_key: true
      t.integer :item_id, foreign_key: true

      t.timestamps
    end
  end
end
