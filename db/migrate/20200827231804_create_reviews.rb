class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.string :body
      t.integer :user_id
      t.integer :product_id
      
      t.timestamps
    end
  end
end
