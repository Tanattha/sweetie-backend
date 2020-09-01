class CategoriesController < ApplicationController
    def index
        categories = Category.all
        render json: CategorySerializer.new(categories)
    end

    def show
        category = Category.find_by(id: params[:id])
        render json: CategorySerializer.new(category)
    end
end

