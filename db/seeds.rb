# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "faker"

NUMBER_OF_COUNTRIES = 15
TOTAL_NUMBER_OF_STUDENTS = 1000

while Country.all.length < NUMBER_OF_COUNTRIES
  country_name = Faker::Address.country
  next if Country.find_by_name(country_name)

  Country.create(name: country_name)
end

countries = Country.all
(1..TOTAL_NUMBER_OF_STUDENTS).each do |_num|
  country = Country.find(rand(countries.length - 1) + 1)
  Student.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    country_id: country.id,
    created_at: Faker::Time.between(DateTime.now - 20, DateTime.now),
  )
end
