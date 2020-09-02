class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :title
      t.string :description
      t.integer :price
      t.string :url
      t.string :category
      
      t.timestamps
    end
  end
end
