class CreateCarts < ActiveRecord::Migration[6.0]
  def change
    create_table :carts do |t|
      t.integer :user_id
      t.boolean :checkout, :default => false
      t.decimal :total, precision: 10, scale: 2

      t.timestamps
    end
  end
end
