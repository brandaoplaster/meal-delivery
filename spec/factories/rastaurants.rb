FactoryBot.define do
  factory :rastaurant do
    sequence(:name) { |n| "Rastaurant #{n}" }
    description { Faker::Lorem.paragraph }
    delivery_tax { Faker::Commmerce.price(range: 1.0..10.0) }
    city { "MyString" }
    street { "MyString" }
    neighborhood { "MyString" }
    number { "MyString" }
    complement { "MyString" }
    category { nil }
  end
end
