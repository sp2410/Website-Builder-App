require "rails_helper"

RSpec.describe AddedCostsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/added_costs").to route_to("added_costs#index")
    end

    it "routes to #new" do
      expect(:get => "/added_costs/new").to route_to("added_costs#new")
    end

    it "routes to #show" do
      expect(:get => "/added_costs/1").to route_to("added_costs#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/added_costs/1/edit").to route_to("added_costs#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/added_costs").to route_to("added_costs#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/added_costs/1").to route_to("added_costs#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/added_costs/1").to route_to("added_costs#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/added_costs/1").to route_to("added_costs#destroy", :id => "1")
    end

  end
end
