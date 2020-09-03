class Cart < ApplicationRecord 
    has_many :cart_products
    has_many :products, through: :cart_products
    belongs_to :user 

=begin
    def total 
        sum = 0
        self.products.each do |product|
            sum += product.price
        end 
        sum
    end

    def self.checkout
      
    user_product_checkout = Product.checkout
    user_product_checkout.map do |check|
      {
        title: check.title,
        num: score.num,
        username: User.find_by(id: score.user_id).username
      }
    end
  end
=end
end