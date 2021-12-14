require 'rails_helper'

RSpec.describe Package, type: :model do
  it { is_expected.to validate_presence_of :name }
  it { is_expected.to validate_uniqueness_of :name }
  it { is_expected.to validate_presence_of :price_cents }

  it { is_expected.not_to validate_presence_of :description }
  it { is_expected.not_to validate_uniqueness_of :price_cents }
  it { is_expected.not_to validate_uniqueness_of :description }
end
