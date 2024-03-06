FactoryBot.define do
  factory :applicant do
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    email { Faker::Internet.email }
    phone { "07#{Faker::Number.number(digits: 9)}" }
    dependants { Faker::Number.between(from: 0, to: 5) }
    association :property
  end
end
