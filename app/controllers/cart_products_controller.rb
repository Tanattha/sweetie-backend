class CartProductsController < ApplicationController
    def index
        cart_products = CartProduct.all
        render json: CartProductSerializer.new(cart_products)
    end

    
end
