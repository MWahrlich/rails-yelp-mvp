# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do
  new_restaurant = Restaurant.new(
    name: Faker::GameOfThrones.character,
    address: "#{Faker::Address.street_address}, #{Faker::Address.zip_code}, #{Faker::Address.city}, #{Faker::Address.state}",
    phone_number: Faker::Company.swedish_organisation_number,
    category: "italian"
    )
  new_restaurant.save!
  5.times do
    new_review = Review.new(
      content: Faker::GameOfThrones.house,
      rating: rand(0..5),
      )
    new_review.restaurant = new_restaurant
    new_review.save!
  end
end

