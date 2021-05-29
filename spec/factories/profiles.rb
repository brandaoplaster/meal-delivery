FactoryBot.define do
  factory :profile do
    sequence(:name) { |n| "Profile #{n}" }
    phone { Faker::PhoneNumber.cell_phone }
    user { nil }
  end
end
