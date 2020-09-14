class CartProductsController < ApplicationController
    def index
        cart_products = CartProduct.last
        render json: cart_products
    end
    
    def show 
        cart_product = CartProduct.find_by(id: params[:id])
        render json: cart_product
      end 


    def checkout
        cart_product = CartProduct.last
        render json: cart_product
    end

    
    
end
