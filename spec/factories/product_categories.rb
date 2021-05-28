FactoryBot.define do
  factory :product_category do
    sequence(:title) { |n| "Category #{n}" }
    restaurant { nil }
  end
end
