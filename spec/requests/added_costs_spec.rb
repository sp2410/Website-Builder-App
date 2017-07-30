require 'rails_helper'

RSpec.describe "AddedCosts", type: :request do
  describe "GET /added_costs" do
    it "works! (now write some real specs)" do
      get added_costs_path
      expect(response).to have_http_status(200)
    end
  end
end
