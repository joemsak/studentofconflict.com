class Package < ApplicationRecord
  validates :name, :price_cents, presence: true
  validates :name, uniqueness: true
end
