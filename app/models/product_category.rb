class ProductCategory < ApplicationRecord
  belongs_to :restaurant

  validates :title, presence: true, uniqueness: { case_insensitive: false }
end
