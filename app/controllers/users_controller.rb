
class UsersController < ApplicationController
  
    def index
        users = User.all
        render json: users
      end
  
      def create
          user = User.create(name: params[:name], email: params[:email])
          user.carts.build(checkout: true, user_id: user.id, total: params[:total])
          user.save
          if user.save 
            
            binding.pry
            
            get_cartItem = params[:cartItems]
            get_cartItem.each do |cart|
              CartProduct.create(cart_id: user.carts.ids, product_id: params[:product_id])
            end
            render json: user
          else
            render json: {message: "Something went wrong. Please make sure all fields are entered correctly."}
          end
      end
     
      def show
        user = User.find_by(id: params[:id])
        render json: user
      end

end
