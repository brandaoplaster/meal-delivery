require 'rails_helper'

RSpec.describe Restaurant, type: :model do
  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to validate_uniqueness_of(:name).case_insensitive }
  it { is_expected.to validate_presence_of(:description) }
  it { is_expected.to validate_numericality_of(:delivery_tax).is_greater_than(0) }

  it { is_expected.to belong_to :category }
end
