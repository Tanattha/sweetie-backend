# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
puts 'deleteing users...'
Product.destroy_all
puts 'deleteing items...'



puts 'seeding users'
User.create(name: "test", email: "test@gmail.com", address: "1111 S Rd MD 22222")
=begin
Category.destroy_all
puts 'deleteing categories...'
puts 'seeding categories'
categories = [
    {title: "Cupcake"},
    {title: "Donut"},
    {title: "Cookie"},
    {title: "Roll"},
    {title: "Cake"}
]
categories.each do |category|
  Category.create(category)
end
=end

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
    {title: "Cake1", price: 10, description: "des13", url: "/images/cakes/1.jpg", category: "cake"},
    {title: "Cake2", price: 10, description: "des14", url: "/images/cakes/2.jpg", category: "cake"},
    {title: "Cake3", price: 10, description: "des15", url: "/images/cakes/3.jpg", category: "cake"}
]
products.each do |product|
    Product.create(product)
end



puts 'All Done!'