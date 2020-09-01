class Product < ApplicationRecord
    has_many :cart_products, dependent: :destroy
    has_many :carts, through: :cart_products

    has_many :reviews, dependent: :destroy
    belongs_to :category
end
