class User < ApplicationRecord
    has_many :carts

    has_many :cart_products, dependent: :destroy
    has_many :products, through: :cart_products

    has_many :reviews

    validates :name, :email, presence: true
end
