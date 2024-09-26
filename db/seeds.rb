require 'faker'

puts "Cleaning database..."
Flat.destroy_all

puts "Creating flats..."
10.times do
  flat = Flat.new(
    name: "#{Faker::Movies::HarryPotter.character}'s house",
    address: "#{Faker::Movies::HarryPotter.house}, #{Faker::Movies::HarryPotter.location}",
    description: Faker::Movies::HarryPotter.quote,
    price_per_night: Faker::Number.between(from: 50, to: 300),
    number_of_guests: Faker::Number.between(from: 1, to: 12)
  )
  puts "Created #{flat.name}"
  flat.save
end

# Faker::Lorem.paragraphs
