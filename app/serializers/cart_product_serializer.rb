class CartProductSerializer
    include FastJsonapi::ObjectSerializer
    attributes :card_id, :product_id
end