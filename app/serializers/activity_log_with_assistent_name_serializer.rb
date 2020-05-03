class ActivityLogWithAssistentNameSerializer < ApplicationSerializer
  attribute :baby_id
  attribute :start_time do |activity_log|
    activity_log.start_time.iso8601
  end
  attribute :stop_time do |activity_log|
    activity_log.stop_time.iso8601 if activity_log.stop_time.present?
  end
  attribute :assistent_name do |activity_log|
    activity_log.assistant.name
  end
end
