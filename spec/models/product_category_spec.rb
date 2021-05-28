require 'rails_helper'

RSpec.describe ProductCategory, type: :model do
  it { is_expected.to validate_presence_of(:title) }
  it { is_expected.to validate_uniqueness_of(:title).case_insensitive }
  it { is_expected.to belong_to :restaurant }
end
