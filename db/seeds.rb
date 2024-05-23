# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

User.create(name: "john", email: "john911@test.com", password: "123456789")
restaurant1 = Restaurant.create(name: "KFC", address: "16 Bis Jules Koenig St, Port Louis", phone: "0602650362", user_id: "1")
Restaurant.create(name: "Buger King", address: "Port Louis", phone: "0583756082", user_id: "1")
Restaurant.create(name: "subway", address: "Vacoas Phoenix", phone: "0184729685", user_id: "1")
Restaurant.create(name: "Comelone", address: "Maupin St, Port Louis", phone: "0184729685", user_id: "1")
Meal.create(name: "burger", price: "90", restaurant: restaurant1)
Meal.create(name: "pizza", price: "150", restaurant: restaurant1)
Meal.create(name: "mine frite", price: "250", restaurant: restaurant1)
Meal.create(name: "riz frite", price: "450", restaurant: restaurant1)
Meal.create(name: "burrito", price: "250", restaurant: restaurant1)
Meal.create(name: "mine bouille", price: "50", restaurant: restaurant1)
Meal.create(name: "kebab", price: "100", restaurant: restaurant1)
Meal.create(name: "beef steak", price: "550", restaurant: restaurant1)
Meal.create(name: "fried chicken", price: "75", restaurant: restaurant1)
Meal.create(name: "chicken wrap", price: "125", restaurant: restaurant1)
Meal.create(name: "sushi", price: "80", restaurant: restaurant1)
