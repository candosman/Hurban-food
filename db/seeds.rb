# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Meal.create(name: "burger", price: "90")
Meal.create(name: "pizza", price: "150")
Meal.create(name: "mine frite", price: "250")
Meal.create(name: "riz frite", price: "450")
Meal.create(name: "burrito", price: "250")
Meal.create(name: "mine bouille", price: "50")
Meal.create(name: "kebab", price: "100")
Meal.create(name: "beef steak", price: "550")
Meal.create(name: "fried chicken", price: "75")
Meal.create(name: "chicken wrap", price: "125")
Meal.create(name: "sushi", price: "80")
