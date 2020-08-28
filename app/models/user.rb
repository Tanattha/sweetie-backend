class User < ApplicationRecord
    has_many :carts

    has_many :cart_items, dependent: :destroy
    has_many :items, through: :cart_items
    #accepts_nested_attributes_for :cart_items, :items

    has_many :reviews

    validates :username, :email, presence: true
end
