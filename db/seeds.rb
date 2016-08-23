# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

10.times do
  User.create!(
    password: Faker::Internet.password,
    full_name: Faker::Company.name,
    email: Faker::Internet.email,
    address: Faker::Address.street_address,
  )
end


5.times do |i|
  Profile.create!(
    dj_name: Faker::Internet.user_name,
    bio: Faker::Hipster.sentence(3, true, 4),
    soundcloud_link: Faker::Internet.url,
    price_hour: ["100", "125", "150", "175", "200"].sample,
    user_id: [1,2,3,4,5].sample
  )
end

5.times do
  Booking.create!(
    date: Faker::Date.forward(200),
    user_id: [1,2,3,4,5].sample,
    time: Time.now,
    booking_address: Faker::Address.street_address,
  )
end

