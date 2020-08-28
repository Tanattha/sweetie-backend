class CartItemsController < ApplicationController
    def index
        cart_items = CartItem.all
        render json: CartItemSerializer.new(cart_items)
    end

    def create 
        
        cart_item = CartItem.create(cart_id: params[:cart_id], item_id: params[:item_id])
        cart = Cart.find(params[:cart_id])
        user = cart.user
        render json: CartItemSerializer.new(cart_item)
    end

    def destroy 
        cart_item = CartItem.find(params[:id])
        user = cart_item.cart.user
        cart_item.destroy
        render json: CartItemSerializer.new(cart_item)
    end
end
