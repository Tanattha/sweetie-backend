class CartProductSerializer
    include FastJsonapi::ObjectSerializer
    attributes :cart_id, :product_id
end