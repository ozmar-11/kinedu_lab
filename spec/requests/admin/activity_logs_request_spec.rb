require 'rails_helper'

RSpec.describe "Admin::ActivityLogs", type: :request do
  describe 'GET /index' do
    let!(:baby) { create(:baby) }
    let!(:assistant) { create(:assistant) }
    let!(:activity_log) { create(:activity_log, baby: baby) }
    let!(:activity_log2) { create(:activity_log, baby: baby) }
    let!(:activity_log3) { create(:activity_log, assistant: assistant) }
    let!(:activity_log4) { create(:activity_log, assistant: assistant) }
    let!(:activity_log5) { create(:activity_log, ) }

    it 'returns http success' do
      get '/admin/activity_logs'

      expect(response).to have_http_status(:success)
    end

    it 'returns all activity logs' do
      get '/admin/activity_logs'

      expect(controller.instance_variable_get(:@activity_logs).size).to eq(ActivityLog.count)
    end

    it 'returns all babies' do
      get '/admin/activity_logs'

      expect(controller.instance_variable_get(:@babies).size).to eq(Baby.count)
    end

    it 'returns all assistants' do
      get '/admin/activity_logs'

      expect(controller.instance_variable_get(:@assistants).size).to eq(Assistant.count)
    end

    it 'returns all activity logs with done status' do
      get '/admin/activity_logs?status=done'

      expect(controller.instance_variable_get(:@activity_logs).size).to eq(ActivityLog.finished.count)
    end

    it 'returns all activity logs with in_progress status' do
      get '/admin/activity_logs?status=in_progress'

      expect(controller.instance_variable_get(:@activity_logs).size).to eq(ActivityLog.in_progress.count)
    end

    it 'returns all activity logs with the given baby' do
      baby_id = baby.id
      get "/admin/activity_logs?baby_id=#{baby_id}"

      expect(controller.instance_variable_get(:@activity_logs).size).to eq(ActivityLog.by_baby_id(baby_id).count)
    end

    it 'returns all activity logs with the done status' do
      assistant_id = assistant.id
      get "/admin/activity_logs?assistant_id=#{assistant_id}"

      expect(controller.instance_variable_get(:@activity_logs).size).to eq(ActivityLog.by_assistant_id(assistant_id).count)
    end
  end
end
