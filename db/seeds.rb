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
mealfile1 = URI.open("https://hips.hearstapps.com/hmg-prod/images/banh-mi-turkey-burger-secondary-6578982fea00a.jpg?")
meal1= Meal.create(name: "burger", price: "90", restaurant: restaurant1, description: "bun, beef, lettuce, bacon, mayonnaise")
meal1.photo.attach(io: mealfile1, filename: "burger.png", content_type: "image/png")
meal1.save!

mealfile2 = URI.open("https://www.cicis.com/content/images/cicis/Jalapeno%20pizza.png")
meal2 = Meal.create(name: "pizza", price: "150", restaurant: restaurant1, description: "dough, Pepperoni, Olives, Bacon")
meal2.photo.attach(io: mealfile2, filename: "pizza.png", content_type: "image/png")
meal2.save!

mealfile3 = URI.open("https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhOcPBBUWdDfIfAR9Kw1V2-LbF6szGsKmBuC0s6beyyYfvXc4RtoizGTRKLN9tciI06lEM-hKTqkI2WCvoCIN6HDb4kP93gp_IIFfuwG0bI4ZuNX4zqxI3ipkOLhnwm2SyID17wfLKM8jU/s1600/DSC_0651.jpg")
meal3 = Meal.create(name: "mine frite", price: "250", restaurant: restaurant1, description: "Fried Noodles, chicken, onion")
meal3.photo.attach(io: mealfile3, filename: "mine frite.png", content_type: "image/png")
meal3.save!

mealfile4 = URI.open("https://www.business-magazine.mu/wp-content/uploads/2021/05/IMG-20210506-WA0006-01.jpeg?v=1620299823")
meal4 = Meal.create(name: "riz frite", price: "450", restaurant: restaurant1, description: "rice, eggs, soy sauce, chopped carrots")
meal4.photo.attach(io: mealfile4, filename: "riz frite.png", content_type: "image/png")
meal4.save!

mealfile5 = URI.open("https://static01.nyt.com/images/2024/01/10/multimedia/AS-Burrito-vzhk/AS-Burrito-vzhk-master768.jpg?width=1280&quality=75&auto=webp")
meal5 = Meal.create(name: "burrito", price: "250", restaurant: restaurant1, description: "chicken, rice, lettuce, cheese, guacamole")
meal5.photo.attach(io: mealfile5, filename: "burrito.png", content_type: "image/png")
meal5.save!

mealfile6 = URI.open("https://mauritianfoodrecipes.com/wp-content/uploads/2021/08/Boiled-Noodles-Mine-Bouille-1536x1117.jpg")
meal6 = Meal.create(name: "mine bouille", price: "50", restaurant: restaurant1, description: "Egg Noodle, Chicken, Fish sauce, Spring Onions")
meal6.photo.attach(io: mealfile6, filename: "mine bouille.png", content_type: "image/png")
meal6.save!

mealfile7 = URI.open("https://cookingorgeous.com/wp-content/uploads/2021/06/lamb-shish-kebab-19.jpg")
meal7 = Meal.create(name: "kebab", price: "100", restaurant: restaurant1, description: "beef, vegetables")
meal7.photo.attach(io: mealfile7, filename: "kebab.png", content_type: "image/png")
meal7.save!

mealfile8 = URI.open("https://kitchenconfidante.com/wp-content/uploads/2022/05/Angus-Beef-Steak-Recipe-with-Garlic-Herb-Compound-Butter-kitchenconfidante.com-2745-FEATURED-IMAGE.jpg")
meal8 = Meal.create(name: "beef steak", price: "550", restaurant: restaurant1, description: "beef, buter")
meal8.photo.attach(io: mealfile8, filename: "beef steak.png", content_type: "image/png")
meal8.save!

mealfile9 = URI.open("https://static01.nyt.com/images/2024/01/10/multimedia/10Korean-Fried-Chicken-lfcg/10Korean-Fried-Chicken-lfcg-master768.jpg?width=1280&quality=75&auto=webp")
meal9 = Meal.create(name: "fried chicken", price: "75", restaurant: restaurant1, description: "chicken, salt, pepper")
meal9.photo.attach(io: mealfile9, filename: "fried chicken.png", content_type: "image/png")
meal9.save!

mealfile10 = URI.open("https://sailorbailey.com/wp-content/uploads/2023/04/Cajun-Chicken-Wrap.jpg")
meal10 = Meal.create(name: "chicken wrap", price: "125", restaurant: restaurant1, description: "lettuce, chicken, rice, and tomatoes,")
meal10.photo.attach(io: mealfile10, filename: "chicken wrap.png", content_type: "image/png")
meal10.save!

mealfile11 = URI.open("https://popmenucloud.com/rilwatzf/c2b948b5-8105-4b14-86f1-a56f56b1a1ab.jpg")
meal11 = Meal.create(name: "sushi", price: "80", restaurant: restaurant1, description: "vegetables, seafood, sushi rice")
meal11.photo.attach(io: mealfile11, filename: "sushi.png", content_type: "image/png")
meal11.save!
