class CartSerializer
    include FastJsonapi::ObjectSerializer
    attributes :checkout, :user_id
end