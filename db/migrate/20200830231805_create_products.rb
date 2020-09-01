class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :title
      t.string :description
      t.integer :price
      t.string :url
      t.integer :category_id 
      
      t.timestamps
    end
  end
end
