class ActivityLogSerializer < ApplicationSerializer
  attributes :id, :baby_id, :assistant_id, :activity_id, :comments
  attribute :start_time do |activity_log|
    activity_log.start_time.iso8601
  end
  attribute :stop_time do |activity_log|
    activity_log.stop_time.iso8601
  end
end
