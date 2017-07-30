require "rails_helper"

RSpec.describe PreviousOwnersController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/previous_owners").to route_to("previous_owners#index")
    end

    it "routes to #new" do
      expect(:get => "/previous_owners/new").to route_to("previous_owners#new")
    end

    it "routes to #show" do
      expect(:get => "/previous_owners/1").to route_to("previous_owners#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/previous_owners/1/edit").to route_to("previous_owners#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/previous_owners").to route_to("previous_owners#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/previous_owners/1").to route_to("previous_owners#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/previous_owners/1").to route_to("previous_owners#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/previous_owners/1").to route_to("previous_owners#destroy", :id => "1")
    end

  end
end
