require 'rails_helper'

RSpec.describe ActivityLog, type: :model do
  describe '#validate_stop_time' do
    let(:activity_log) { build(:activity_log) }

    it 'It add error if stop_time is prior start_time' do
      activity_log.stop_time = Time.current
      activity_log.start_time = Time.current

      expect(activity_log).to be_invalid
    end

    it 'It add error if stop_time is prior start_time' do
      expect(activity_log).to be_valid
    end
  end

  describe '#set_duration' do
    let(:activity_log) { build(:activity_log, start_time: Time.current, stop_time: Time.current + 5.minutes) }

    it 'Calculate the duration automatically if start and stop time provided' do
      activity_log.save

      expect(activity_log.duration).to eq(5)
    end

    it 'Set duration to nil if start and stop time not provided' do
      activity_log.stop_time = nil
      activity_log.save

      expect(activity_log.duration).to be_nil
    end
  end

  describe '#by_baby_id' do
    let!(:baby) { create(:baby) }
    let!(:baby2) { create(:baby) }
    let!(:activity_log) { create(:activity_log, baby: baby) }
    let!(:activity_log2) { create(:activity_log, baby: baby) }
    let!(:activity_log3) { create(:activity_log, baby: baby2) }

    it 'Return the activity logs with the provided baby_id' do
      expect(ActivityLog.by_baby_id(baby.id).count).to eq(2)
    end
  end

  describe '#by_assistant_id' do
    let!(:assistant) { create(:assistant) }
    let!(:assistant2) { create(:assistant) }
    let!(:activity_log) { create(:activity_log, assistant: assistant) }
    let!(:activity_log2) { create(:activity_log, assistant: assistant) }
    let!(:activity_log3) { create(:activity_log, assistant: assistant2) }

    it 'Return the activity logs with the provided baby_id' do
      expect(ActivityLog.by_assistant_id(assistant.id).count).to eq(2)
    end
  end

  describe '#status' do
    let(:activity_log) { create(:activity_log) }
    let(:activity_log2) { create(:activity_log, stop_time: nil) }

    it 'Should return Termiando if stop time is set' do
      expect(activity_log.status).to eq('Terminado')
    end

    it 'Should return En proceso if stop time is not set' do
      expect(activity_log2.status).to eq('En progreso')
    end
  end

  describe '#by_status' do
    let!(:activity_log) { create(:activity_log) }
    let!(:activity_log2) { create(:activity_log) }
    let!(:activity_log3) { create(:activity_log, stop_time: nil) }

    it 'should activity logs with done status' do
      expect(ActivityLog.by_status(:done).size).to eq(2)
    end

    it 'should activity logs with in_progress status' do
      expect(ActivityLog.by_status(:in_progress).size).to eq(1)
    end
  end

  describe '#in_progress' do
    let!(:activity_log) { create(:activity_log) }
    let!(:activity_log2) { create(:activity_log, stop_time: nil) }
    let!(:activity_log3) { create(:activity_log, stop_time: nil) }

    it 'should activity logs with in_progress status' do
      expect(ActivityLog.in_progress.size).to eq(2)
    end
  end

  describe '#done' do
    let!(:activity_log) { create(:activity_log) }
    let!(:activity_log2) { create(:activity_log) }
    let!(:activity_log3) { create(:activity_log, stop_time: nil) }

    it 'should activity logs with done status' do
      expect(ActivityLog.finished.size).to eq(2)
    end
  end
end
