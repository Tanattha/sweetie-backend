# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
puts 'deleteing users...'
Item.destroy_all
puts 'deleteing items...'
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

puts 'seeding items'
items = [
    {title: "Cupcake1", price: 5, url: "../images/cupcakes/1.jpg", category_id: 1},
    {title: "Cupcake2", price: 5, url: "../images/cupcakes/2.jpg", category_id: 1},
    {title: "Cupcake3", price: 5, url: "../images/cupcakes/3.jpg", category_id: 1},
    {title: "Donut1", price: 5, url: "../images/donuts/1.jpg", category_id: 2},
    {title: "Donut2", price: 5, url: "../images/donuts/2.jpg", category_id: 2},
    {title: "Donut3", price: 5, url: "../images/donuts/3.jpg", category_id: 2},
    {title: "Cookie1", price: 5, url: "../images/cookies/1.jpg", category_id: 3},
    {title: "Cookie2", price: 5, url: "../images/cookies/2.jpg", category_id: 3},
    {title: "Cookie3", price: 5, url: "../images/cookies/3.jpg", category_id: 3},
    {title: "Roll1", price: 5, url: "../images/rolls/1.jpg", category_id: 4},
    {title: "Roll2", price: 5, url: "../images/rolls/2.jpg", category_id: 4},
    {title: "Roll3", price: 5, url: "../images/rolls/3.jpg", category_id: 4},
    {title: "Cake1", price: 10, url: "../images/cakes/1.jpg", category_id: 5},
    {title: "Cake2", price: 10, url: "../images/cakes/2.jpg", category_id: 5},
    {title: "Cake3", price: 10, url: "../images/cakes/3.jpg", category_id: 5}
]
items.each do |item|
    Item.create(item)
end



puts 'All Done!'