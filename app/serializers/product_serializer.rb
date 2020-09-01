class ProductSerializer
    include FastJsonapi::ObjectSerializer
    attributes :title, :description, :price, :url, :category_id
end