# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'China is awesome!',
    address:      '7 Boundary St, London E2 7JE',
    phone_number:  '0123456789',
    category:      'chinese'
  },
  {
    name:         'France is awesome!',
    address:      'Paris 12 Ave Blanc',
    phone_number:  '+70123456789',
    category:      'french'
  },
  {
    name:         'Belgium is awesome!',
    address:      'Brussels Street 1/13',
    phone_number:  '+90123456789',
    category:      'belgian'
  },
  {
    name:         'Japan is awesome!',
    address:      'Tokio Hotel 113',
    phone_number:  '+8970123456789',
    category:      'japanese'
  },
  {
    name:         'Italy is awesome!',
    address:      'Roma Mama, 120',
    phone_number:  '122350123456789',
    category:      'italian'
  }
]
Restaurant.create!(restaurants_attributes)

Review.create!(content: 'good one!', rating: 5, restaurant: Restaurant.last)
puts 'Finished!'
