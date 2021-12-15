require "rails_helper"

RSpec.describe "Root path" do
  it "routes successfully" do
    get root_path
    expect(response).to be_successful
  end
end
