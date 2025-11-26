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
Restaurant.create!(name: "Le Petit Chef", address: "Rosenheimer Str. 15, 81667 München", category: "french")
puts "Created Le Petit Chef"
puts "Creating restaurants..."
Restaurant.create!(name: "that's Amore", address: "Ismaninger Str. 116, 81675 München", category: "italian")
puts "Created that's Amore"
puts "Creating restaurants..."
Restaurant.create!(name: "Jiao Kitchen", address: "Arabellastraße 19, 81925 München", category: "chinese")
puts "Created Jiao Kitchen"
puts "Creating restaurants..."
Restaurant.create!(name: "Zento", address: "Oskar-von-Miller-Ring 36, 80333 München", category: "japanese")
puts "Created Zento"
puts "Creating restaurants..."
Restaurant.create!(name: "Le Stollberg", address: "Stollbergstraße 2, 80539 München", category: "french")
puts "Created Le Stollberg"

puts "Finished! Created #{Restaurant.count} restaurants."
