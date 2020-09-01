class UsersController < ApplicationController
    def index
        users = User.all
        render json: UserSerializer.new(users)
      end
  
      def create
          user = User.create(username: params[:name], email: params[:email], address: params[:address])
          #user.carts.build(checkout: params[:checkout])
          #user.save
          render json: UserSerializer.new(user)
          
          
      end
     
      def show
        user = User.find_by(id: params[:id])
        render json: UserSerializer.new(user)
      end

end
