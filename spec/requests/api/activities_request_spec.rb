require 'rails_helper'

RSpec.describe "Api::Activities", type: :request do

  describe 'GET /activities' do
    let!(:activity) { create(:activity) }
    let!(:activity2) { create(:activity) }
    let!(:activity3) { create(:activity) }

    it 'returns http success' do
      get '/api/activities'
      expect(response).to have_http_status(:success)
    end

    it 'render activities in JSON' do
      get '/api/activities'

      expect(JSON.parse(response.body).size).to eq(3)
    end
  end
end
