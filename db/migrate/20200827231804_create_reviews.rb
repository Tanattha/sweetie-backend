class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.string :name
      t.string :body
      t.integer :product_id
      
      t.timestamps
    end
  end
end
