class CartsController < ApplicationController
    def index
        carts = Cart.all
        render json: CartSerializer.new(carts)
    end

    def show 
      cart = Cart.find_by(id: params[:id])
      render json: CartSerializer.new(cart)
    end 

    def checkout
      cart = Cart.find(params[:id])
      cart.checkout = true 
      cart.save
      user = cart.user 
      render json: CartSerializer.new(cart)
    end
end
