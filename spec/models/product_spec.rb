require 'rails_helper'

RSpec.describe Product, type: :model do
  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to validate_presence_of(:description) }
  it { is_expected.to validate_presence_of(:price) }
  it { is_expected.to validate_presence_of(:status) }
  it { is_expected.to validate_uniqueness_of(:name).case_insensitive }
  it { is_expected.to define_enum_for(:status).with_values({ avaliable: 1, unavailable: 0}) }

  it { is_expected.to belong_to :product_category }
end
