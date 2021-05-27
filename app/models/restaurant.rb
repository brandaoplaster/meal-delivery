class Restaurant < ApplicationRecord
  belongs_to :category

  validates :name, presence: true, uniqueness: { case_insensitive: false }
  validates :description, presence: true
  validates :delivery_tax, presence: true, numericality: { greater_than: 0 }
end
