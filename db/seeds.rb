# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts 'Cleaning the database'
Meal.destroy_all if Rails.env.development?
Restaurant.destroy_all if Rails.env.development?
User.destroy_all if Rails.env.development?

# USER
User.create(name: "john", email: "john911@test.com", password: "123456789")
puts 'One user created'

# RESTAURANTS
file = URI.open("https://cdn.sanity.io/images/8nn8fua5/production/ad4b07245ab05b22b6c516ae57be65a423b99fc0-1920x1080.jpg")
restaurant1 = Restaurant.create(name: "KFC", address: "16 Bis Jules Koenig St, Port Louis", phone: "0602650362", user_id: "1")
restaurant1.photo.attach(io: file, filename: "KFC.png", content_type: "image/png")
restaurant1.save

file = URI.open("https://www.greenqueen.com.hk/wp-content/uploads/2024/03/plant-based-burger-king-germany-vegan-cheaper-meat-1.jpg")
restaurant2 = Restaurant.create(name: "Buger King", address: "Port Louis", phone: "0583756082", user_id: "1")
restaurant2.photo.attach(io: file, filename: "Buger King.png", content_type: "image/png")
restaurant2.save

file = URI.open("https://foodchainmagazine.com/wp-content/uploads/sites/10/2023/06/Subway-800x432.jpeg")
restaurant3 = Restaurant.create(name: "subway", address: "Vacoas Phoenix", phone: "0184729685", user_id: "1")
restaurant3.photo.attach(io: file, filename: "subway.png", content_type: "image/png")
restaurant3.save

file = URI.open("https://comelon.ch/img/lieu.jpg")
restaurant4 = Restaurant.create(name: "Comelone", address: "Maupin St, Port Louis", phone: "0184729685", user_id: "1")
restaurant4.photo.attach(io: file, filename: "Comelone.png", content_type: "image/png")
restaurant4.save

file = URI.open("https://mauritius.oceanbasket.com/wp-content/uploads/sites/9/nf_image/1-2-7demwzs4staxic2wo9y7so5dw.png")
restaurant5 = Restaurant.create(name: "ocean basket", address: "Grand Baie", phone: "0738691285", user_id: "1")
restaurant5.photo.attach(io: file, filename: "ocean basket.png", content_type: "image/png")
restaurant5.save

file = URI.open("https://mauritius.oceanbasket.com/wp-content/uploads/sites/9/nf_image/1-2-7demwzs4staxic2wo9y7so5dw.png")
restaurant6 = Restaurant.create(name: "Mine St Pierre ", address: "L'Agrément Road, St Pierre", phone: "0928537503", user_id: "1")
restaurant6.photo.attach(io: file, filename: "Mine St Pierre .png", content_type: "image/png")
restaurant6.save

# MEALS
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
