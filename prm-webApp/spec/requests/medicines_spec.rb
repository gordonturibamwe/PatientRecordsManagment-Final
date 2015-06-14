require 'rails_helper'

RSpec.describe "Medicines", type: :request do
  describe "GET /medicines" do
    it "works! (now write some real specs)" do
      get medicines_path
      expect(response).to have_http_status(200)
    end
  end
end
