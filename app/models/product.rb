class Product < ApplicationRecord
  belongs_to :product_category

  validates :name, presence: true, uniqueness: { case_insensitive: false}
  validates :description, presence: true
  validates :price, presence: true, numericality: { greater_than: 0 }
  validates :status, presence: true

  enum status: { avaliable: 1, unavailable: 0 }
end
