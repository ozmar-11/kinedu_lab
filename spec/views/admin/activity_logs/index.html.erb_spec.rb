# frozen_string_literal: true
require 'rails_helper'

RSpec.describe 'admin/activity_logs/index.html.erb', type: :view do
  let!(:baby) { create(:baby) }
  let!(:assistant) { create(:assistant) }
  let!(:activity_log) { create(:activity_log) }
  let!(:activity_log2) { create(:activity_log) }
  let!(:activity_log3) { create(:activity_log) }
  let!(:activity_log4) { create(:activity_log) }
  let!(:activity_log5) { create(:activity_log) }
  let!(:activity_logs) do
    ActivityLog
        .joins(:baby, :assistant, :activity)
        .select('activity_logs.*, babies.name AS baby_name, assistants.name AS assistant_name, activities.name AS activity_name')
  end

  before do
    view.instance_variable_set(:@babies, Baby.all)
    view.instance_variable_set(:@assistants, Assistant.all)
    view.instance_variable_set(:@status, ActivityLog::ACTIVITY_LOG_STATUSES.map { |key, value| [value, key] })
    view.instance_variable_set(:@activity_logs, activity_logs)
  end

  describe 'Filters' do
    it 'should render assistant filter' do
      render

      expect(rendered).to have_selector('#assistant_id')
    end

    it 'should render baby filter' do
      render

      expect(rendered).to have_selector('#baby_id')
    end

    it 'should render status filter' do
      render

      expect(rendered).to have_selector('#status')
    end
  end

  describe 'Table' do
    it 'should render a table with the activity log data' do
      render

      expect(rendered).to have_selector('table.table.table-hover')
      activity_logs.each do |activity_log|
        expect(render).to have_content(activity_log.assistant_name)
        expect(render).to have_content(activity_log.activity_name)
        expect(render).to have_content(activity_log.baby_name)
        expect(render).to have_content(activity_log.status)
      end
    end
  end
end
