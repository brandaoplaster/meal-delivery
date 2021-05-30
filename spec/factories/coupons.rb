FactoryBot.define do
  factory :coupon do
    sequence(:name) { |n| "Coupon #{n}" }
    code { Faker::Commecer.unique.promotion_code(digits: 5) }
    status { :active }
    discount_value { 10 }
    max_use { 100 }
    due_date { 5.days.from_now }
  end
end
