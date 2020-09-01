class Cart < ApplicationRecord 
    has_many :cart_products
    has_many :products, through: :cart_products
    belongs_to :user 

    def total 
        sum = 0
        self.items.each do |item|
            sum += item.price
        end 
        sum
    end
end