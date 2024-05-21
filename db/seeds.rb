# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Restaurant.create!(name: "KFC", address: "Moka", phone: "0602650362")
Restaurant.create!(name: "Buger King", address: "Port Louis", phone: "0583756082")
Restaurant.create!(name: "subway", address: "Vacoas Phoenix", phone: "0184729685")
