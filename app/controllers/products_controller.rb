class ProductsController < ApplicationController
    def index
        products = Product.all
        render json: products, except: [:created_at, :updated_at]
    end
=begin
    def show
        product = Product.find_by(id: params[:id])
        reviews = product.reviews
        if product && reviews
            render json: product, include: {
                reviews: {except: [:created_at, :updated_at]}}
        elsif product 
            render json: product, except: [:created_at, :updated_at]
        else 
            render json: {message: "Product not found."}
        end 
    end
=end
end
