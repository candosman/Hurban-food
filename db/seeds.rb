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
user1 = User.create(name: "john", email: "john420@test.com", password: "123456789")
puts 'One user created'

# RESTAURANTS
file1 = URI.open("https://cdn.sanity.io/images/8nn8fua5/production/ad4b07245ab05b22b6c516ae57be65a423b99fc0-1920x1080.jpg")
restaurant1 = Restaurant.create(name: "KFC", address: "16 Bis Jules Koenig St, Port Louis", phone: "0602650362", user: user1)
restaurant1.photo.attach(io: file1, filename: "KFC.png", content_type: "image/png")
restaurant1.save!

file2 = URI.open("https://www.greenqueen.com.hk/wp-content/uploads/2024/03/plant-based-burger-king-germany-vegan-cheaper-meat-1.jpg")
restaurant2 = Restaurant.create(name: "Buger King", address: "Port Louis", phone: "0583756082", user: user1)
restaurant2.photo.attach(io: file2, filename: "Buger King.png", content_type: "image/png")
restaurant2.save!

file3 = URI.open("https://foodchainmagazine.com/wp-content/uploads/sites/10/2023/06/Subway-800x432.jpeg")
restaurant3 = Restaurant.create(name: "subway", address: "Vacoas Phoenix", phone: "0184729685", user: user1)
restaurant3.photo.attach(io: file3, filename: "subway.png", content_type: "image/png")
restaurant3.save!

file4 = URI.open("https://comelon.ch/img/lieu.jpg")
restaurant4 = Restaurant.create(name: "Comelone", address: "Maupin St, Port Louis", phone: "0184729685", user: user1)
restaurant4.photo.attach(io: file4, filename: "Comelone.png", content_type: "image/png")
restaurant4.save!

file5 = URI.open("https://mauritius.oceanbasket.com/wp-content/uploads/sites/9/nf_image/1-2-7demwzs4staxic2wo9y7so5dw.png")
restaurant5 = Restaurant.create(name: "ocean basket", address: "Grand Baie", phone: "0738691285", user: user1)
restaurant5.photo.attach(io: file5, filename: "ocean basket.png", content_type: "image/png")
restaurant5.save!

file6 = URI.open("https://scontent.fmru7-1.fna.fbcdn.net/v/t39.30808-6/326680978_5931872073594050_796655183344838221_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=5f2048&_nc_ohc=G5VHqCSyIoQQ7kNvgHNCmWa&_nc_ht=scontent.fmru7-1.fna&oh=00_AYBdpG4qwgd97Wlap63s3ZoPxhZ74LhrvL4s8JhiQmsgDw&oe=6654E3CE")
restaurant6 = Restaurant.create(name: "Mine St Pierre", address: "L'Agrément Road, St Pierre", phone: "0928537503", user: user1)
restaurant6.photo.attach(io: file6, filename: "Mine St Pierre.png", content_type: "image/png")
restaurant6.save!

# MEALS
Meal.create(name: "burger", price: "90", restaurant: restaurant1, description: "bun, beef, lettuce, bacon, mayonnaise")
Meal.create(name: "pizza", price: "150", restaurant: restaurant1, description: "dough, Pepperoni, Olives, Bacon")
Meal.create(name: "mine frite", price: "250", restaurant: restaurant1, description: "Fried Noodles, chicken, onion")
Meal.create(name: "riz frite", price: "450", restaurant: restaurant1, description: "rice, eggs, soy sauce, chopped carrots")
Meal.create(name: "burrito", price: "250", restaurant: restaurant1, description: "chicken, rice, lettuce, cheese, guacamole")
Meal.create(name: "mine bouille", price: "50", restaurant: restaurant1, description: "Egg Noodle, Chicken, Fish sauce, Spring Onions")
Meal.create(name: "kebab", price: "100", restaurant: restaurant1, description: "beef, vegetables")
Meal.create(name: "beef steak", price: "550", restaurant: restaurant1, description: "beef, buter")
Meal.create(name: "fried chicken", price: "75", restaurant: restaurant1, description: "chicken, salt, pepper")
Meal.create(name: "chicken wrap", price: "125", restaurant: restaurant1, description: "lettuce, chicken, rice, and tomatoes,")
Meal.create(name: "sushi", price: "80", restaurant: restaurant1, description: "vegetables, seafood, sushi rice")
