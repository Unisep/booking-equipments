require 'rails_helper'

RSpec.describe "EquipmentTypes", type: :request do
  describe "GET /equipment_types" do
    it "works! (now write some real specs)" do
      get equipment_types_path
      expect(response).to have_http_status(200)
    end
  end
end
