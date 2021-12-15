class Package < ApplicationRecord
  extend FriendlyId

  STOCK_ATTRIBUTES = {
    PRIMARY_STARTER: {
      name: "3 Month Starter",
      price_cents: 40_000,
      description: "All first-time clients must book six sessions at a discounted price"
    }
  }.freeze

  @primary_starter_mutex = Mutex.new

  friendly_id :name, use: :slugged
  monetize :price_cents

  validates :name, :price_cents, presence: true
  validates :name, uniqueness: true

  def self.primary_starter
    return @primary_starter if @primary_starter
  
    @primary_starter_mutex.synchronize do
      @primary_starter ||= find_or_create_by!(STOCK_ATTRIBUTES[:PRIMARY_STARTER])
    end
  
    @primary_starter
  end
end
