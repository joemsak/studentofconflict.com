FactoryBot.define do
  factory :package do
    sequence(:name) { |n| "Factory Package #{n}" }
    price_cents { 10_000 } # $100
    description { "Factory package description" }
  end
end
