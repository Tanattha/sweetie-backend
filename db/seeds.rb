# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'deleteing user...'
User.destroy_all
puts 'deleteing product...'
Product.destroy_all
puts 'deleteing cart_product...'
CartProduct.destroy_all
puts 'deleteing cart...'
Cart.destroy_all

puts 'seeding users'
User.create(name: "test", email: "test@gmail.com")

puts 'seeding products'
products = [
    {title: "Cupcake1", price: 5, description: "des1", url: "/images/cupcakes/1.jpg", category: "cupcake"},
    {title: "Cupcake2", price: 5, description: "des2", url: "/images/cupcakes/2.jpg", category: "cupcake"},
    {title: "Cupcake3", price: 5, description: "des3", url: "/images/cupcakes/3.jpg", category: "cupcake"},
    {title: "Donut1", price: 5, description: "des4", url: "/images/donuts/1.jpg", category: "donut"},
    {title: "Donut2", price: 5, description: "des5", url: "/images/donuts/2.jpg", category: "donut"},
    {title: "Donut3", price: 5, description: "des6", url: "/images/donuts/3.jpg", category: "donut"},
    {title: "Cookie1", price: 5, description: "des7", url: "/images/cookies/1.jpg", category: "cookie"},
    {title: "Cookie2", price: 5, description: "des8", url: "/images/cookies/2.jpg", category: "cookie"},
    {title: "Cookie3", price: 5, description: "des9", url: "/images/cookies/3.jpg", category: "cookie"},
    {title: "Roll1", price: 5, description: "des10", url: "/images/rolls/1.jpg", category: "roll"},
    {title: "Roll2", price: 5, description: "des11", url: "/images/rolls/2.jpg", category: "roll"},
    {title: "Roll3", price: 5, description: "des12", url: "/images/rolls/3.jpg", category: "roll"},
    {title: "Brownie1", price: 10, description: "des13", url: "/images/brownies/1.jpg", category: "brownie"},
    {title: "Brownie2", price: 10, description: "des14", url: "/images/brownies/2.jpg", category: "brownie"},
    {title: "Brownie3", price: 10, description: "des15", url: "/images/brownies/3.jpg", category: "brownie"}
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
    {name: "test1", body: "test review1", product_id: 1},
    {name: "test11", body: "test review11", product_id: 11},
    {name: "test2", body: "test review2", product_id: 2},
    {name: "test3", body: "test review3", product_id: 3}
]
reviews.each do |review|
    Review.create(review)
end

puts 'All Done!'
