require 'rails_helper'

RSpec.describe "AddedCostVendors", type: :request do
  describe "GET /added_cost_vendors" do
    it "works! (now write some real specs)" do
      get added_cost_vendors_path
      expect(response).to have_http_status(200)
    end
  end
end
