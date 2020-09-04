class CartProductsController < ApplicationController
    def index
        cart_products = CartProduct.all
        render json: cart_products
    end

    
end
