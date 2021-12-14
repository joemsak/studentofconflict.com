require 'rails_helper'

RSpec.describe "Packages", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get packages_path
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      package = create(:package)
      get package_path(package)
      expect(response).to have_http_status(:success)
    end
  end
end
