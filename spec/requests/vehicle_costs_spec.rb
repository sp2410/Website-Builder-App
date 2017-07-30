require 'rails_helper'

RSpec.describe "VehicleCosts", type: :request do
  describe "GET /vehicle_costs" do
    it "works! (now write some real specs)" do
      get vehicle_costs_path
      expect(response).to have_http_status(200)
    end
  end
end
