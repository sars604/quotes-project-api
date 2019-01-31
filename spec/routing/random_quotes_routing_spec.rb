require "rails_helper"

RSpec.describe RandomQuotesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/random_quotes").to route_to("random_quotes#index")
    end


    it "routes to #show" do
      expect(:get => "/random_quotes/1").to route_to("random_quotes#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/random_quotes").to route_to("random_quotes#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/random_quotes/1").to route_to("random_quotes#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/random_quotes/1").to route_to("random_quotes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/random_quotes/1").to route_to("random_quotes#destroy", :id => "1")
    end

  end
end
