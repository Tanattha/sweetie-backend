class ReviewsController < ApplicationController
    def index
        reviews = Review.all.order('created_at desc')
        render json: reviews, except: [:created_at, :updated_at]
    end 

    def create 
         review = Review.create(name: params[:name], body: params[:body] )
         render json: review, except: [:created_at, :updated_at]
    end 

    def show 
        review = Review.find(params[:id])
        if review 
            render json: review, except: [:created_at, :updated_at]
        else  
            render json: {message: "Review not found."}
        end 

    end 

   
end
