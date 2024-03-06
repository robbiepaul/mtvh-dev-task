FactoryBot.define do
  factory :property do
    property_ref { Faker::Alphanumeric.alpha(number: 6, min_alpha: 3, min_numeric: 3) }
    address { Faker::Address.full_address }
  end
end
