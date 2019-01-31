require 'rails_helper'

RSpec.describe "RandomQuotes", type: :request do
  describe "GET /random_quotes" do
    it "works! (now write some real specs)" do
      get random_quotes_path
      expect(response).to have_http_status(200)
    end
  end
end
