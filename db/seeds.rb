# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: 5, category: "french"}
pizza_east =  { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: 4, category: "french"}
yopizz =  { name: "Yopizz", address: "Loin tres loi", phone_number: 4, category: "french"}
kushy =  { name: "Kushy", address: "599 street", phone_number: 5, category: "french"}
augo =  { name: "Augo", address: "5632 line", phone_number: 4, category: "french"}


[ dishoom, pizza_east, yopizz, kushy, augo].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"


#
#puts "Creating Reviews..."
#r1 = {5, "sdfbgnh,jklkljh"}
#r2 = {4, "dfgbvds"}
#r3 = {5, "dfghjk,;l:mkjhgfdsfghjgfdfgvbvd"}
#
#
#[r1, r2, r3].each do |attributes|
#  review = Review.create!(attributes)
#  puts "Created rev"
#end
#puts "Finished!"
#