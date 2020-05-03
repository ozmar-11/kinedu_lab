require 'rails_helper'

RSpec.describe 'Api::Babies', type: :request do

  describe 'GET /babies' do
    let!(:baby) { create(:baby) }
    let!(:baby2) { create(:baby) }
    let!(:baby3) { create(:baby) }

    it 'returns http success' do
      get '/api/babies'
      expect(response).to have_http_status(:success)
    end

    it 'returns http success' do
      get '/api/babies'

      expect(JSON.parse(response.body).size).to eq(3)
    end
  end
end
