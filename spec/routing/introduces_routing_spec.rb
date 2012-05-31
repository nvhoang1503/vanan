require "spec_helper"

describe IntroducesController do
  describe "routing" do

    it "routes to #index" do
      get("/introduces").should route_to("introduces#index")
    end

    it "routes to #new" do
      get("/introduces/new").should route_to("introduces#new")
    end

    it "routes to #show" do
      get("/introduces/1").should route_to("introduces#show", :id => "1")
    end

    it "routes to #edit" do
      get("/introduces/1/edit").should route_to("introduces#edit", :id => "1")
    end

    it "routes to #create" do
      post("/introduces").should route_to("introduces#create")
    end

    it "routes to #update" do
      put("/introduces/1").should route_to("introduces#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/introduces/1").should route_to("introduces#destroy", :id => "1")
    end

  end
end
