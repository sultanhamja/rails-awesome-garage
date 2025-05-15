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

Car.create!(brand: "Toyota", model: "Corolla", year: 2018, fuel: "petrol", owner: nik)
Car.create!(brand: "Tesla", model: "Model 3", year: 2022, fuel: "electric", owner: hamja)
Car.create!(brand: "Ford", model: "F-150", year: 2015, fuel: "diesel", owner: rizz)
Car.create!(brand: "Volkswagen", model: "Beetle", year: 1967, fuel: "petrol", owner: gaurav)

puts "Done! #{Owner.count} owners, #{Car.count} Cars created"
