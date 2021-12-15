require "rails_helper"

RSpec.describe Package, type: :model do
  it { is_expected.to monetize(:price) }

  describe "validations" do
    subject { build(:package) }

    it { is_expected.to validate_presence_of :name }
    it { is_expected.to validate_uniqueness_of :name }
    it { is_expected.to validate_presence_of :price_cents }

    it { is_expected.not_to validate_presence_of :description }
    it { is_expected.not_to validate_uniqueness_of :price_cents }
    it { is_expected.not_to validate_uniqueness_of :description }
  end

  describe ".primary_starter" do
    subject(:primary_starter) { described_class.primary_starter }

    it "returns the three month starter package" do
      expect(primary_starter.name).to eq("3 Month Starter")
      expect(primary_starter.price.to_s).to eq("400.00")
      expect(primary_starter.description).to eq(
        "All first-time clients must book six sessions at a discounted price"
      )
    end
  end
end
