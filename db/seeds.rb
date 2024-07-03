# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "0651413215", category: "belgian"}
pizza_east =  {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "0651857465", category: "italian"}
au_bon_poulet =  {name: "Au Bon Poulet", address: "10 rue de la liberté, Paris", phone_number: "0620325262", category: "french"}
ramen_toi = {name: "Ramen toi", address: "54 rue du Général, Montpellier", phone_number: "0614142536", category: "japanese"}
pekinois = {name: "Pekinois", address: "1 rue des fleurs, Lille", phone_number: "0674563210", category: "chinese"}

restaurants = [dishoom, pizza_east, au_bon_poulet, ramen_toi, pekinois]

restaurants.each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"