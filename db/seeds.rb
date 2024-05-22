# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
User.create!(name: "john", email: "john@test.com", password: "123456789")
Restaurant.create!(name: "KFC", address: "Moka", phone: "0602650362", user_id: "1")
Restaurant.create!(name: "Buger King", address: "Port Louis", phone: "0583756082", user_id: "1")
Restaurant.create!(name: "subway", address: "Vacoas Phoenix", phone: "0184729685", user_id: "1")
Meal.create!(name: "buger", price: "50", restaurant_id: "1")
