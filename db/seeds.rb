# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


  flats_data = [
  {
    name: 'Light & Spacious Garden Flat London',
    address: '10 Clifton Gardens London W9 1DT',
    description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
    price_per_night: 75,
    number_of_guests: 3
  },
  {
    name: 'Cozy Loft in Paris',
    address: '15 Rue de Rivoli Paris',
    description: 'Experience Parisian charm in this cozy loft. Perfect for couples seeking a romantic getaway.',
    price_per_night: 100,
    number_of_guests: 2
  },
  {
    name: 'Modern Apartment in New York City',
    address: '123 Main St, New York, NY',
    description: 'Sleek and stylish apartment in the heart of NYC. Close to all amenities and attractions.',
    price_per_night: 150,
    number_of_guests: 4
  },
  {
    name: 'Beachfront Villa in Malibu',
    address: '1 Ocean Ave, Malibu, CA',
    description: 'Luxurious beachfront villa with stunning ocean views. Ideal for a relaxing getaway.',
    price_per_night: 300,
    number_of_guests: 6
  }
]

flats_data.each do |flat_data|
  Flat.find_or_create_by!(flat_data)
end
