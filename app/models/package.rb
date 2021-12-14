class Package < ApplicationRecord
  extend FriendlyId

  friendly_id :name, use: :slugged
  monetize :price_cents

  validates :name, :price_cents, presence: true
  validates :name, uniqueness: true

  def self.three_month_starter
    find_or_create_by!(ThreeMonthPackage.attributes)
  end

  class ThreeMonthPackage
    NAME = "3 Month Starter"
    PRICE_CENTS = 40_000
    DESCRIPTION = "All first-time clients must book six sessions at a discounted price"

    def self.attributes
      {
        name: NAME,
        price_cents: PRICE_CENTS,
        description: DESCRIPTION
      }
    end
  end
end
