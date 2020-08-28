class ItemSerializer
    include FastJsonapi::ObjectSerializer
    attributes :title, :price, :url, :category_id
end