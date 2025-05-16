# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


puts "cleaning database"

Owner.destroy_all
Car.destroy_all

puts "Database Cleaned"

puts "Creating owners"

hamja = Owner.create!(name:"Hamja")
nik = Owner.create!(name:"Nik")
rizz = Owner.create!(name:"Rizz")
gaurav = Owner.create!(name:"Gaurav")


puts "Crewating cars...."

Car.create!(brand: "Toyota", model: "Supra", year: 2020, fuel: "petrol", image_url:"https://res.cloudinary.com/djchw1u9n/image/upload/v1747405220/1897a3956097deca24e425e8069199cf-removebg-preview_yrg8yl.png", owner: nik)
Car.create!(brand: "Tesla", model: "Model 3", year: 2022, fuel: "electric",image_url:"https://res.cloudinary.com/djchw1u9n/image/upload/v1747405040/tesla-model-3-removebg-preview_snacej.png", owner: hamja)
Car.create!(brand: "Ford", model: "F-150", year: 2015, fuel: "diesel", image_url:"https://res.cloudinary.com/djchw1u9n/image/upload/v1747405040/b21e0d4f5f3beba2f260771e39ae4ac6-removebg-preview_lbcsik.png", owner: rizz)
Car.create!(brand: "Volkswagen", model: "Beetle", year: 1967, fuel: "petrol",image_url:"https://res.cloudinary.com/djchw1u9n/image/upload/v1747405320/1967-volkswagen-beetle-removebg-preview_or4nck.png", owner: gaurav)

puts "Done! #{Owner.count} owners, #{Car.count} Cars created"
