class Item < ApplicationRecord
    has_many :cart_items, dependent: :destroy
    has_many :carts, through: :cart_items
    #accepts_nested_attributes_for :cart_items, :carts

    has_many :reviews, dependent: :destroy
    belongs_to :category
end
