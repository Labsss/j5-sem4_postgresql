require 'faker'

User.destroy_all
City.destroy_all
Accomodation.destroy_all
Reservation.destroy_all

20.times do
    User.create!(
      email: Faker::Internet.email,
      phone_number: Faker::PhoneNumber.phone_number,
      description: Faker::Lorem.sentence(50)
    )
end

10.times do
    City.create!(
      name: Faker::Address.city,
      zip_code: Faker::Number.number(5)
    )
end

50.times do
    Accomodation.create!(
      available_beds: Faker::Number.between(1, 6),
      price: Faker::Number.between(18, 32),
      description: Faker::Lorem.sentence(50),
      has_wifi: Faker::Boolean.boolean,
      welcome_message: Faker::Lorem.sentence(50)
    )
end

    def self_acc
        5.times do
            Accomodation.self  ##code a rajouter
        end

        5.times do
            Accomodation.self ##code a rajouter
        end
    end