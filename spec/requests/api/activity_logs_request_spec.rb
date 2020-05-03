require 'rails_helper'

RSpec.describe 'Api::ActivityLogs', type: :request do

  describe 'GET /babies/:baby_id/activity_logs' do
    let(:invalid_id) { 123456789 }
    let!(:baby) { create(:baby) }
    let!(:activity_log) { create(:activity_log, baby: baby) }
    let!(:activity_log2) { create(:activity_log, baby: baby) }
    let!(:activity_log3) { create(:activity_log, baby: baby) }
    let!(:activity_log4) { create(:activity_log) }
    let!(:activity_log5) { create(:activity_log) }

    it 'returns http success if baby_id valid' do
      get "/api/babies/#{baby.id}/activity_logs"

      expect(response).to have_http_status(:success)
    end

    it 'returns activity logs with the specified baby id' do
      get "/api/babies/#{baby.id}/activity_logs"

      expect(JSON.parse(response.body).size).to eq(3)
    end

    it 'returns an empty array' do
      get "/api/babies/#{invalid_id}/activity_logs"

      expect(JSON.parse(response.body).size).to eq(0)
    end
  end

  describe 'POST /activity_logs' do
    let(:baby) { create(:baby) }
    let(:activity) { create(:activity) }
    let(:assistant) { create(:assistant) }
    let(:valid_activity_log_params) do
      {
        activity_log: {
          activity_id: activity.id,
          assistant_id: assistant.id,
          baby_id: baby.id,
          start_time: (Time.current - 30.minutes),
          stop_time: Time.current,
          comments: "Super awesome comment"
        }
      }
    end

    it 'returns http success if valid activity log provided' do
      post '/api/activity_logs', params: valid_activity_log_params

      expect(response).to have_http_status(:created)
    end

    it 'returns created activity log if valid activity log provided' do
      post '/api/activity_logs', params: valid_activity_log_params

      activity_log = JSON.parse(response.body)
      activity_log_params = valid_activity_log_params[:activity_log]

      expect(activity_log['activity_id']).to eq(activity_log_params[:activity_id])
      expect(activity_log['assistant_id']).to eq(activity_log_params[:assistant_id])
      expect(activity_log['baby_id']).to eq(activity_log_params[:baby_id])
      expect(activity_log['start_time']).to eq(activity_log_params[:start_time].iso8601)
      expect(activity_log['stop_time']).to eq(activity_log_params[:stop_time].iso8601)
      expect(activity_log['comments']).to eq(activity_log_params[:comments])
    end
  end
end
