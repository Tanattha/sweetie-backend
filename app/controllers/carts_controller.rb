class CartsController < ApplicationController
    def index
        carts = Cart.all
        render json: carts, except: [:created_at, :updated_at]
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
      new_cart = Cart.create(user_id: user.id)
      render json: CartSerializer.new(cart)
    end

  
end
