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

  describe ".three_month_starter" do
    subject(:package) { Package.three_month_starter }

    context "when the record does not exist" do
      it "creates the three month starter package" do
        expect {
          package
        }.to change {
          Package.count
        }.from(0).to(1)

        expect(package.name).to eq("3 Month Starter")
        expect(package.price.to_s).to eq("400.00")
        expect(package.description).to eq(
          "All first-time clients must book six sessions at a discounted price"
        )
      end
    end

    context "when the record does exist" do
      before { create(:package, Package::ThreeMonthPackage.attributes) }

      it "returns the three month starter package" do
        expect {
          package
        }.not_to change {
          Package.count
        }.from(1)
      end
    end
  end
end
