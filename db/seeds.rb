# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user1 = User.create!(email: "me@home.com", password: "watching the telly", name: "ME", contact_number: 90000010)
user2 = User.create!(email: "ben@gmail.com", password: "teletubbies", name: "Ben Cho", contact_number: 90020280)

product1 = Product.create(name: "organ attack", description: "a game where you destroy your opponent's organs", price: 5.50, rental_days: 7, meetup_location: "Singapore, Orchard Road", availability_status: true, user_id: 1)

