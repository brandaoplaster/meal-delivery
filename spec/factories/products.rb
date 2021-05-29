FactoryBot.define do
  factory :product do
    sequence(:name) { |n| "Product #{n}" }
    description { Faker::Lorem.paragraph }
    price { Faker::Commer.price(range: 10.0..100.0) }
    status { :available }
    product_category { nil }
  end
end
