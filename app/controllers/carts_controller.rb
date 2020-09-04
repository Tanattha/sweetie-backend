class CartsController < ApplicationController
    def index
        carts = Cart.all
        render json: carts
    end

    def show 
      cart = Cart.find_by(id: params[:id])
      render json: cart
    end 

    
    def checkout
    getCart = Cart.last
    render json: getCart
    end

  
end
