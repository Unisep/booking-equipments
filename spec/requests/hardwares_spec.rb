require 'rails_helper'

RSpec.describe "Hardwares", type: :request do
  describe "GET /hardwares" do
    it "works! (now write some real specs)" do
      get hardwares_path
      expect(response).to have_http_status(200)
    end
  end
end
