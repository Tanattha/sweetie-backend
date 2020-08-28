class CartItemSerializer
    include FastJsonapi::ObjectSerializer
    attributes :card_id, :item_id
end