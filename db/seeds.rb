# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
attributes = [
  { name: 'Dishoom', category: 'chinese', address: '7 Boundary St, London', phone_number: '+111111' },
  { name: 'Pizza East', category: 'italian', address: '56 Shoreditch St, London', phone_number: '+111111' },
  { name: 'Yahou', category: 'french', address: '81 Waw St, London', phone_number: '+111111' },
  { name: 'Ouai Ouai', category: 'belgian', address: '81 Brazil St, London', phone_number: '+111111' },
  { name: 'Ah Bon', category: 'japanese', address: '81 Albi St, London', phone_number: '+111111' }
]

attributes.each do |attribute|
  restaurant = Restaurant.create!(attribute)
  puts "Created #{restaurant.name}"
end

puts "Finished!"
