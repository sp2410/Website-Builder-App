require "rails_helper"

RSpec.describe SectiontypesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/sectiontypes").to route_to("sectiontypes#index")
    end

    it "routes to #new" do
      expect(:get => "/sectiontypes/new").to route_to("sectiontypes#new")
    end

    it "routes to #show" do
      expect(:get => "/sectiontypes/1").to route_to("sectiontypes#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/sectiontypes/1/edit").to route_to("sectiontypes#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/sectiontypes").to route_to("sectiontypes#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/sectiontypes/1").to route_to("sectiontypes#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/sectiontypes/1").to route_to("sectiontypes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/sectiontypes/1").to route_to("sectiontypes#destroy", :id => "1")
    end

  end
end
