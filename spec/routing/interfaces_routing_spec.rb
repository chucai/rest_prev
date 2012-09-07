require "spec_helper"

describe InterfacesController do
  describe "routing" do

    it "routes to #index" do
      get("/interfaces").should route_to("interfaces#index")
    end

    it "routes to #new" do
      get("/interfaces/new").should route_to("interfaces#new")
    end

    it "routes to #show" do
      get("/interfaces/1").should route_to("interfaces#show", :id => "1")
    end

    it "routes to #edit" do
      get("/interfaces/1/edit").should route_to("interfaces#edit", :id => "1")
    end

    it "routes to #create" do
      post("/interfaces").should route_to("interfaces#create")
    end

    it "routes to #update" do
      put("/interfaces/1").should route_to("interfaces#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/interfaces/1").should route_to("interfaces#destroy", :id => "1")
    end

  end
end
