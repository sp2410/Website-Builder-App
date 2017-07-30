require "rails_helper"

RSpec.describe VehicleCostsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/vehicle_costs").to route_to("vehicle_costs#index")
    end

    it "routes to #new" do
      expect(:get => "/vehicle_costs/new").to route_to("vehicle_costs#new")
    end

    it "routes to #show" do
      expect(:get => "/vehicle_costs/1").to route_to("vehicle_costs#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/vehicle_costs/1/edit").to route_to("vehicle_costs#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/vehicle_costs").to route_to("vehicle_costs#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/vehicle_costs/1").to route_to("vehicle_costs#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/vehicle_costs/1").to route_to("vehicle_costs#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/vehicle_costs/1").to route_to("vehicle_costs#destroy", :id => "1")
    end

  end
end
