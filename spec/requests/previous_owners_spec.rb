require 'rails_helper'

RSpec.describe "PreviousOwners", type: :request do
  describe "GET /previous_owners" do
    it "works! (now write some real specs)" do
      get previous_owners_path
      expect(response).to have_http_status(200)
    end
  end
end
