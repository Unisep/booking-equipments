require "rails_helper"

RSpec.describe HardwaresController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/hardwares").to route_to("hardwares#index")
    end

    it "routes to #new" do
      expect(:get => "/hardwares/new").to route_to("hardwares#new")
    end

    it "routes to #show" do
      expect(:get => "/hardwares/1").to route_to("hardwares#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/hardwares/1/edit").to route_to("hardwares#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/hardwares").to route_to("hardwares#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/hardwares/1").to route_to("hardwares#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/hardwares/1").to route_to("hardwares#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/hardwares/1").to route_to("hardwares#destroy", :id => "1")
    end

  end
end
