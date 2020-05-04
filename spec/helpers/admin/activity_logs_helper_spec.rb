require 'rails_helper'

RSpec.describe Admin::ActivityLogsHelper, type: :helper do
  describe '#date_in_monterrey_timezone' do
    let(:current_time) { Time.current }

    it 'should return time in monterrey timezone' do
      expect(date_in_monterrey_timezone(current_time).zone).to eq(current_time.in_time_zone('America/Monterrey').zone)
    end
  end

  describe '#duration_or_empty' do
    let(:activity_log) { create(:activity_log, stop_time: nil) }
    let(:activity_log2) { create(:activity_log) }

    it 'should return * if activity not finished' do
      expect(duration_or_empty(activity_log.duration)).to eq('*')
    end

    it 'should return duration if activity finished' do
      expect(duration_or_empty(activity_log2.duration)).to eq(activity_log2.duration)
    end
  end
end
