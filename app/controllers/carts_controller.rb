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
    getCart = Cart.last
     #getCart = Cart.find_by_id(18)
    # created_at = getCart.created_at,
    #total = getCart.total,
    # name = getCart.user.name,
    # email = getCart.user.email,
    # cartItems = getCart.products

     render json: getCart
    end

  
end
