class CartProductsController < ApplicationController
    def index
        cart_products = CartProduct.all
        render json: CartProductSerializer.new(cart_products)
    end

    def create    
        cart_product = CartProduct.create(cart_id: params[:cart_id], product_id: params[:product_id])
        cart = Cart.find(params[:cart_id])
        user = cart.user
        render json: CartProductSerializer.new(cart_product)
    end

    def destroy 
        cart_product = CartProduct.find(params[:id])
        user = cart_product.cart.user
        cart_product.destroy
        render json: CartProductSerializer.new(cart_product)
    end
end
