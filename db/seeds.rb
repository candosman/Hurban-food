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
Order.destroy_all if Rails.env.development?
OrderList.destroy_all if Rails.env.development?
Meal.destroy_all if Rails.env.development?
Restaurant.destroy_all if Rails.env.development?
User.destroy_all if Rails.env.development?

# USER
user1 = User.create(name: "john", email: "john420@test.com", password: "123456789")
user2 = User.create(name: "Alex Johnson", email: "alexjohnson@test.com", password: "123456789")
user3 = User.create(name: "Brittany Smith", email: "brittanysmith@test.com", password: "123456789")
user4 = User.create(name: "Carlos Hernandez", email: "carloshernandez@test.com", password: "123456789")
user5 = User.create(name: "Diana Lee", email: "dianalee@test.com", password: "123456789")
user6 = User.create(name: "Ethan Brown", email: "ethanbrown@test.com", password: "123456789")
user7 = User.create(name: "Fiona Davis", email: "fionadavis@test.com", password: "123456789")
user8 = User.create(name: "George Wilson", email: "georgewilson@test.com", password: "123456789")
user9 = User.create(name: "Hannah Martinez", email: "hannahmartinez@test.com", password: "123456789")
user10 = User.create(name: "Ian Clark", email: "ianclark@test.com", password: "123456789")
puts 'Ten users created'

# RESTAURANTS
file1 = URI.open("https://images.unsplash.com/photo-1517248135467-4c7edcad34c4?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
restaurant1 = Restaurant.create(name: "Island Breeze Bistro", address: "Coastal Road, Grand Baie, Mauritius", phone: "0602650362", user: user1)
restaurant1.photo.attach(io: file1, filename: "Island Breeze Bistro.png", content_type: "image/png")
restaurant1.save!

file2 = URI.open("https://images.unsplash.com/photo-1551632436-cbf8dd35adfa?q=80&w=2942&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
restaurant2 = Restaurant.create(name: "Lagoon's Edge Seafood Grill", address: "Royal Road, Flic en Flac, Mauritius", phone: "0583756082", user: user1)
restaurant2.photo.attach(io: file2, filename: "Lagoon's Edge Seafood Grill.png", content_type: "image/png")
restaurant2.save!

file3 = URI.open("https://images.unsplash.com/photo-1514933651103-005eec06c04b?q=80&w=2874&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
restaurant3 = Restaurant.create(name: "Mountain Peak Steakhouse", address: "Summit Avenue, Curepipe, Mauritius", phone: "0184729685", user: user2)
restaurant3.photo.attach(io: file3, filename: "Mountain Peak Steakhouse.png", content_type: "image/png")
restaurant3.save!

file4 = URI.open("https://plus.unsplash.com/premium_photo-1670984935550-5ce2e220977a?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
restaurant4 = Restaurant.create(name: "Golden Bamboo Chinese Cuisine", address: "Triolet Main Road, Triolet, Mauritius", phone: "0184729685", user: user3)
restaurant4.photo.attach(io: file4, filename: "Golden Bamboo Chinese Cuisine.png", content_type: "image/png")
restaurant4.save!

file5 = URI.open("https://images.unsplash.com/photo-1550966871-3ed3cdb5ed0c?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
restaurant5 = Restaurant.create(name: "Pasta Bella Italian Eatery", address: "Port Louis Waterfront, Port Louis, Mauritius", phone: "0738691285", user: user4)
restaurant5.photo.attach(io: file5, filename: "Pasta Bella Italian Eatery.png", content_type: "image/png")
restaurant5.save!

file6 = URI.open("https://images.unsplash.com/photo-1481833761820-0509d3217039?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
restaurant6 = Restaurant.create(name: "Casa Fiesta Mexican Restaurant", address: "Coastal Road, Tamarin, Mauritius", phone: "0928537503", user: user4)
restaurant6.photo.attach(io: file6, filename: "Casa Fiesta Mexican Restaurant.png", content_type: "image/png")
restaurant6.save!

file7 = URI.open("https://images.unsplash.com/photo-1585518419759-7fe2e0fbf8a6?q=80&w=2824&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
restaurant7 = Restaurant.create(name: "Le Café Parisien", address: "Champs de Mars, Port Louis, Mauritius", phone: "0734829573", user: user5)
restaurant7.photo.attach(io: file7, filename: "Le Café Parisien.png", content_type: "image/png")
restaurant7.save!

file8 = URI.open("https://images.unsplash.com/photo-1544148103-0773bf10d330?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
restaurant8 = Restaurant.create(name: "Green Haven Vegan Cafe", address: "Botanical Garden Lane, Pamplemousses, Mauritius", phone: "0917234823", user: user6)
restaurant8.photo.attach(io: file8, filename: "Green Haven Vegan Cafe.png", content_type: "image/png")
restaurant8.save!

file9 = URI.open("https://images.unsplash.com/photo-1617196034796-73dfa7b1fd56?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
restaurant9 = Restaurant.create(name: "Sushi Wave", address: "Sunset Boulevard, Grand Baie, Mauritius", phone: "072346184", user: user7)
restaurant9.photo.attach(io: file9, filename: "Sushi Wave.png", content_type: "image/png")
restaurant9.save!

file10 = URI.open("https://images.unsplash.com/photo-1552566626-52f8b828add9?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
restaurant10 = Restaurant.create(name: "The Rustic Grill BBQ", address: "Forest Side, Curepipe, Mauritius", phone: "087463521", user: user8)
restaurant10.photo.attach(io: file10, filename: "The Rustic Grill BBQ.png", content_type: "image/png")
restaurant10.save!

file11 = URI.open("https://images.unsplash.com/photo-1414235077428-338989a2e8c0?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
restaurant11 = Restaurant.create(name: "Mediterranean Delights", address: "Quatre Bornes Avenue, Quatre Bornes, Mauritius", phone: "027463859", user: user9)
restaurant11.photo.attach(io: file11, filename: "Mediterranean Delights.png", content_type: "image/png")
restaurant11.save!

file12 = URI.open("https://images.unsplash.com/photo-1555396273-367ea4eb4db5?q=80&w=2874&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
restaurant12= Restaurant.create(name: "Urban Flavors Diner", address: "Phoenix Mall, Vacoas-Phoenix, Mauritius", phone: "0178348536", user: user10)
restaurant12.photo.attach(io: file12, filename: "Urban Flavors Diner.png", content_type: "image/png")
restaurant12.save!

# MEALS
mealfile1 = URI.open("https://images.unsplash.com/photo-1691201090878-1b9eab935bdd?q=80&w=1937&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
meal1= Meal.create(name: "Grilled Salmon Delight", price: "800", restaurant: restaurant2, description: "Freshly grilled salmon served with a lemon butter sauce, accompanied by steamed asparagus and wild rice")
meal1.photo.attach(io: mealfile1, filename: "Grilled Salmon Delight.png", content_type: "image/png")
meal1.save!

mealfile2 = URI.open("https://images.unsplash.com/photo-1555658094-ca794654362c?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
meal2 = Meal.create(name: "Classic Cheeseburger", price: "450", restaurant: restaurant3, description: "Juicy beef patty topped with cheddar cheese, lettuce, tomato, pickles, and our special sauce on a toasted bun. Served with fries")
meal2.photo.attach(io: mealfile2, filename: "Classic Cheeseburger.png", content_type: "image/png")
meal2.save!

mealfile3 = URI.open("https://images.unsplash.com/photo-1533777324565-a040eb52facd?q=80&w=2872&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
meal3 = Meal.create(name: "Vegetarian Lasagna", price: "600", restaurant: restaurant5, description: "Layers of pasta, ricotta cheese, spinach, and marinara sauce, baked to perfection and topped with mozzarella cheese")
meal3.photo.attach(io: mealfile3, filename: "Vegetarian Lasagna.png", content_type: "image/png")
meal3.save!

mealfile4 = URI.open("https://images.unsplash.com/photo-1473093226795-af9932fe5856?q=80&w=2894&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
meal4 = Meal.create(name: "Chicken Alfredo Pasta", price: "700", restaurant: restaurant3, description: "Grilled chicken breast served over fettuccine pasta with a creamy Alfredo sauce and garnished with fresh parsley")
meal4.photo.attach(io: mealfile4, filename: "Chicken Alfredo Pasta.png", content_type: "image/png")
meal4.save!

mealfile5 = URI.open("https://images.unsplash.com/photo-1599974579688-8dbdd335c77f?q=80&w=2988&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
meal5 = Meal.create(name: "Beef Tacos", price: "550", restaurant: restaurant3, description: "Three soft tacos filled with seasoned ground beef, lettuce, cheese, salsa, and sour cream. Served with a side of rice and beans")
meal5.photo.attach(io: mealfile5, filename: "Beef Tacos.png", content_type: "image/png")
meal5.save!

mealfile6 = URI.open("https://images.unsplash.com/photo-1598023696416-0193a0bcd302?q=80&w=2736&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
meal6 = Meal.create(name: "Margherita Pizza", price: "500", restaurant: restaurant5, description: "Classic pizza topped with fresh tomatoes, mozzarella cheese, and basil leaves on a thin, crispy crust")
meal6.photo.attach(io: mealfile6, filename: "Margherita Pizza.png", content_type: "image/png")
meal6.save!

mealfile7 = URI.open("https://images.unsplash.com/photo-1515543237350-b3eea1ec8082?q=80&w=2785&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
meal7 = Meal.create(name: "Caesar Salad", price: "400", restaurant: restaurant5, description: "Crisp romaine lettuce, Parmesan cheese, and croutons tossed in a creamy Caesar dressing")
meal7.photo.attach(io: mealfile7, filename: "Caesar Salad.png", content_type: "image/png")
meal7.save!

mealfile8 = URI.open("https://images.unsplash.com/photo-1625943553852-781c6dd46faa?q=80&w=2796&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
meal8 = Meal.create(name: "Shrimp Scampi", price: "850", restaurant: restaurant2, description: "Sautéed shrimp in a garlic butter and white wine sauce, served over linguine with a side of garlic bread")
meal8.photo.attach(io: mealfile8, filename: "Shrimp Scampi.png", content_type: "image/png")
meal8.save!

mealfile9 = URI.open("https://images.unsplash.com/photo-1520066391310-428f06ebd602?q=80&w=2950&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
meal9 = Meal.create(name: "Vegan Buddha Bowl", price: "600", restaurant: restaurant5, description: "A nourishing bowl of quinoa, roasted vegetables, avocado, chickpeas, and a tahini dressing")
meal9.photo.attach(io: mealfile9, filename: "fried chicken.png", content_type: "image/png")
meal9.save!

mealfile10 = URI.open("https://images.unsplash.com/photo-1529193591184-b1d58069ecdd?q=80&w=2538&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
meal10 = Meal.create(name: "BBQ Ribs", price: "900", restaurant: restaurant3, description: "Slow-cooked pork ribs glazed with a smoky barbecue sauce, served with coleslaw and cornbread")
meal10.photo.attach(io: mealfile10, filename: "BBQ Ribs.png", content_type: "image/png")
meal10.save!

mealfile11 = URI.open("https://plus.unsplash.com/premium_photo-1668143365324-37cae1de4e56?q=80&w=2942&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
meal11 = Meal.create(name: "Lobster Bisque", price: "350", restaurant: restaurant2, description: "Creamy and rich lobster soup with a hint of sherry, garnished with chives")
meal11.photo.attach(io: mealfile11, filename: "Lobster Bisque.png", content_type: "image/png")
meal11.save!

mealfile12 = URI.open("https://plus.unsplash.com/premium_photo-1701294739171-d6ca2b5821be?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
meal12 = Meal.create(name: "Margarita Grilled Chicken", price: "700", restaurant: restaurant3, description: "Grilled chicken breast marinated in lime and tequila, served with a side of cilantro rice and black beans")
meal12.photo.attach(io: mealfile12, filename: "Margarita Grilled Chicken.png", content_type: "image/png")
meal12.save!

mealfile13 = URI.open("https://plus.unsplash.com/premium_photo-1712762300153-90261e84e576?q=80&w=2787&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
meal13 = Meal.create(name: "Eggplant Parmesan", price: "650", restaurant: restaurant2, description: "Breaded eggplant slices topped with marinara sauce and mozzarella cheese, baked until golden and bubbly. Served with spaghetti")
meal13.photo.attach(io: mealfile13, filename: "Eggplant Parmesan.png", content_type: "image/png")
meal13.save!

mealfile14 = URI.open("https://images.unsplash.com/photo-1556906918-c3071bd11598?q=80&w=2960&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
meal14 = Meal.create(name: "Spicy Tuna Roll", price: "400", restaurant: restaurant2, description: "Sushi roll filled with spicy tuna, cucumber, and avocado, topped with a spicy mayo drizzle")
meal14.photo.attach(io: mealfile14, filename: "Spicy Tuna Roll.png", content_type: "image/png")
meal14.save!

mealfile15 = URI.open("https://images.unsplash.com/photo-1666633151676-428fe839c3b1?q=80&w=2787&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
meal15 = Meal.create(name: "Filet Mignon", price: "1200", restaurant: restaurant3, description: "Tender and juicy filet mignon, cooked to perfection and served with mashed potatoes and steamed broccoli")
meal15.photo.attach(io: mealfile15, filename: "Filet Mignon.png", content_type: "image/png")
meal15.save!

mealfile16 = URI.open("https://images.unsplash.com/photo-1626804475297-41608ea09aeb?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
meal16 = Meal.create(name: "Pad Thai", price: "600", restaurant: restaurant5, description: "Stir-fried rice noodles with chicken, shrimp, tofu, egg, and peanuts, tossed in a tangy tamarind sauce")
meal16.photo.attach(io: mealfile16, filename: "Pad Thai.png", content_type: "image/png")
meal16.save!

mealfile17 = URI.open("https://images.unsplash.com/photo-1485963631004-f2f00b1d6606?q=80&w=2875&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
meal17 = Meal.create(name: "Mediterranean Platter", price: "550", restaurant: restaurant5, description: "A selection of hummus, falafel, tabbouleh, olives, and pita bread")
meal17.photo.attach(io: mealfile17, filename: "Mediterranean Platter.png", content_type: "image/png")
meal17.save!

mealfile18 = URI.open("https://images.unsplash.com/photo-1592119747782-d8c12c2ea267?q=80&w=2333&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
meal18 = Meal.create(name: "Stuffed Bell Peppers", price: "500", restaurant: restaurant5, description: "Bell peppers filled with a savory mix of rice, ground beef, tomatoes, and spices, baked and topped with melted cheese")
meal18.photo.attach(io: mealfile18, filename: "Stuffed Bell Peppers.png", content_type: "image/png")
meal18.save!

mealfile19 = URI.open("https://images.unsplash.com/photo-1549203438-a7696aed4dac?q=80&w=2600&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
meal19 = Meal.create(name: "French Onion Soup", price: "300", restaurant: restaurant5, description: "Rich beef broth with caramelized onions, topped with a slice of baguette and melted Gruyère cheese")
meal19.photo.attach(io: mealfile19, filename: "French Onion Soup.png", content_type: "image/png")
meal19.save!

mealfile20 = URI.open("https://images.unsplash.com/photo-1565557623262-b51c2513a641?q=80&w=2871&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
meal20 = Meal.create(name: "Chicken Tikka Masala", price: "650", restaurant: restaurant3, description: "Tender chicken pieces simmered in a creamy tomato sauce, served with basmati rice and naan bread")
meal20.photo.attach(io: mealfile20, filename: "Chicken Tikka Masala.png", content_type: "image/png")
meal20.save!

mealfile21 = URI.open("https://plus.unsplash.com/premium_photo-1664391688423-7cb847237bcd?q=80&w=2848&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
meal21 = Meal.create(name: "Spinach & Feta Stuffed Chicken", price: "700", restaurant: restaurant3, description: "Chicken breast stuffed with spinach and feta cheese, served with roasted potatoes and green beans")
meal21.photo.attach(io: mealfile21, filename: "Spinach & Feta Stuffed Chicken.png", content_type: "image/png")
meal21.save!

mealfile22 = URI.open("https://images.unsplash.com/photo-1630175914039-69ffca8a0604?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
meal22 = Meal.create(name: "Seafood Paella", price: "900", restaurant: restaurant2, description: "A traditional Spanish dish with saffron-infused rice, shrimp, mussels, clams, and chorizo")
meal22.photo.attach(io: mealfile22, filename: "Seafood Paella.png", content_type: "image/png")
meal22.save!

mealfile23 = URI.open("https://images.unsplash.com/photo-1595587870672-c79b47875c6a?q=80&w=2846&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
meal23 = Meal.create(name: "Caprese Salad", price: "450", restaurant: restaurant5, description: "Fresh mozzarella, ripe tomatoes, and basil drizzled with balsamic glaze and olive oil")
meal23.photo.attach(io: mealfile23, filename: "Caprese Salad.png", content_type: "image/png")
meal23.save!

mealfile24 = URI.open("https://images.unsplash.com/photo-1644592219048-5c070fd3c91c?q=80&w=2761&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
meal24 = Meal.create(name: "Beef Stroganoff", price: "750", restaurant: restaurant3, description: "Tender beef strips and mushrooms in a creamy sauce, served over egg noodles")
meal24.photo.attach(io: mealfile24, filename: "Beef Stroganoff.png", content_type: "image/png")
meal24.save!

mealfile25 = URI.open("https://images.unsplash.com/photo-1631292784640-2b24be784d5d?q=80&w=2960&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
meal25 = Meal.create(name: "Mango Chicken Curry", price: "700", restaurant: restaurant2, description: "Sweet and spicy chicken curry with mango chunks, served with jasmine rice")
meal25.photo.attach(io: mealfile25, filename: "Mango Chicken Curry.png", content_type: "image/png")
meal25.save!

mealfile26 = URI.open("https://images.unsplash.com/photo-1709201417401-5c72ed84f191?q=80&w=3023&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
meal26 = Meal.create(name: "Gourmet Mac & Cheese", price: "500", restaurant: restaurant2, description: "Creamy macaroni and cheese with a blend of gourmet cheeses, topped with breadcrumbs and baked to a golden brown")
meal26.photo.attach(io: mealfile26, filename: "Gourmet Mac & Cheese.png", content_type: "image/png")
meal26.save!

mealfile27 = URI.open("https://images.unsplash.com/photo-1617305855058-336d24456869?q=80&w=2960&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
meal27 = Meal.create(name: "Chocolate Lava Cake", price: "250", restaurant: restaurant2, description: "Rich chocolate cake with a molten center, served with vanilla ice cream and fresh berries")
meal27.photo.attach(io: mealfile27, filename: "Chocolate Lava Cake.png", content_type: "image/png")
meal27.save!
