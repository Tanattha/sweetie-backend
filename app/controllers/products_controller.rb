class ProductsController < ApplicationController
    def index
        products = Product.all
       #render json: ProductSerializer.new(products)
       render json: products, except: [:created_at, :updated_at]
    end

    def show
        product = Product.find_by(id: params[:id])
        render json: ProductSerializer.new(product)
    end
end
