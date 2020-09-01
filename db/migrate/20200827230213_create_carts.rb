class CreateCarts < ActiveRecord::Migration[6.0]
  def change
    create_table :carts do |t|
      t.boolean :checkout, :default => false
      t.integer :user_id
      
      t.timestamps
    end
  end
end
