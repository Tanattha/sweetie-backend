

puts 'deleteing user...'
User.destroy_all
puts 'deleteing product...'
Product.destroy_all
puts 'deleteing cart_product...'
CartProduct.destroy_all
puts 'deleteing cart...'
Cart.destroy_all
puts 'deleteing review...'
Review.destroy_all

puts 'seeding users'
User.create(name: "test", email: "test@gmail.com")

puts 'seeding products'
products = [
    {title: "Cupcake1", price: 5, description: "Fruity cupcake with season fruits on top", url: "/images/cupcakes/1.jpg", category: "cupcake"},
    {title: "Cupcake2", price: 5, description: "Chocolate cupcake with a rasberry on top", url: "/images/cupcakes/2.jpg", category: "cupcake"},
    {title: "Cupcake3", price: 5, description: "Creamy caramel cupcake", url: "/images/cupcakes/3.jpg", category: "cupcake"},
    {title: "Donut1", price: 5, description: "Rainbow donut with sprinkles", url: "/images/donuts/1.jpg", category: "donut"},
    {title: "Donut2", price: 5, description: "Chocolate donut with sprinkles", url: "/images/donuts/2.jpg", category: "donut"},
    {title: "Donut3", price: 5, description: "Chocolate donut with white chocolate", url: "/images/donuts/3.jpg", category: "donut"},
    {title: "Cookie1", price: 5, description: "Chocolate cookie", url: "/images/cookies/1.jpg", category: "cookie"},
    {title: "Cookie2", price: 5, description: "Christmas theme cookie", url: "/images/cookies/2.jpg", category: "cookie"},
    {title: "Cookie3", price: 5, description: "Colorful macaroon", url: "/images/cookies/3.jpg", category: "cookie"},
    {title: "Roll1", price: 5, description: "Chocolate roll", url: "/images/rolls/1.jpg", category: "roll"},
    {title: "Roll2", price: 5, description: "Chocolate roll with cinnamon", url: "/images/rolls/2.jpg", category: "roll"},
    {title: "Roll3", price: 5, description: "Chocolate roll with icing on top", url: "/images/rolls/3.jpg", category: "roll"},
    {title: "Brownie1", price: 10, description: "Brownie rasberry", url: "/images/brownies/1.jpg", category: "brownie"},
    {title: "Brownie2", price: 10, description: "Creamy brownie", url: "/images/brownies/2.jpg", category: "brownie"},
    {title: "Brownie3", price: 10, description: "Brownie with dark chocolate fudge", url: "/images/brownies/3.jpg", category: "brownie"}
]
products.each do |product|
    Product.create(product)
end

puts 'seeding cart_products'
cart_products = [
    {cart_id: 2, product_id: 1},
    {cart_id: 2, product_id: 1},
    {cart_id: 2, product_id: 3}
]
cart_products.each do |cart_product|
    CartProduct.create(cart_product)
end

puts 'seeding cart'
Cart.create(checkout: true, user_id: 2, total: 100)

puts 'seeding reviews'
reviews = [
    {name: "Keven", body: "I love it!"},
    {name: "Sarah", body: "Good price, Good taste"},
    {name: "Natalia", body: "Highly Recommended!"},
    {name: "Jill", body: "Taste so good, I'll buy it again"}
]
reviews.each do |review|
    Review.create(review)
end

puts 'All Done!'
