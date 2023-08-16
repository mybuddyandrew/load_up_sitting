# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

booking_data = [
  { first_name: "Alice", last_name: "Johnson", animal_name: "Buddy", animal_type: "Dog", hours_requested: 4, date_of_service: Date.today + 5.days },
  { first_name: "Bob", last_name: "Smith", animal_name: "Kitty", animal_type: "Cat", hours_requested: 3, date_of_service: Date.today + 7.days },
  { first_name: "Charlie", last_name: "Brown", animal_name: "Charlie", animal_type: "Dog", hours_requested: 2, date_of_service: Date.today + 10.days },
  { first_name: "David", last_name: "Williams", animal_name: "Max", animal_type: "Dog", hours_requested: 6, date_of_service: Date.today + 3.days }
]

booking_data.each do |data|
  Booking.create!(data)
end

puts "Seeded #{Booking.count} bookings."
