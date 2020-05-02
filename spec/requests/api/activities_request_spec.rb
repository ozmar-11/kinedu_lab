require 'rails_helper'

RSpec.describe "Api::Activities", type: :request do

  describe "GET /index" do
    it "returns http success" do
      get "/api/activities/index"
      expect(response).to have_http_status(:success)
    end
  end

end
