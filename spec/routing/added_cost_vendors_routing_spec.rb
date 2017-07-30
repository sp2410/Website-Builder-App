require "rails_helper"

RSpec.describe AddedCostVendorsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/added_cost_vendors").to route_to("added_cost_vendors#index")
    end

    it "routes to #new" do
      expect(:get => "/added_cost_vendors/new").to route_to("added_cost_vendors#new")
    end

    it "routes to #show" do
      expect(:get => "/added_cost_vendors/1").to route_to("added_cost_vendors#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/added_cost_vendors/1/edit").to route_to("added_cost_vendors#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/added_cost_vendors").to route_to("added_cost_vendors#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/added_cost_vendors/1").to route_to("added_cost_vendors#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/added_cost_vendors/1").to route_to("added_cost_vendors#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/added_cost_vendors/1").to route_to("added_cost_vendors#destroy", :id => "1")
    end

  end
end
