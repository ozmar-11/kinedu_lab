class Admin::ActivityLogsController < ApplicationController
  ITERABLE_KEY_PARAMS = %w[baby_id assistant_id]

  def index
    @babies = Baby.pluck(:name, :id)
    @assistants = Assistant.pluck(:name, :id)
    @status = ActivityLog::ACTIVITY_LOG_STATUSES.map { |key, value| [value, key] }
    @activity_logs = filtered_activity_logs
  end
end

private

def filtered_activity_logs
  activity_logs = ActivityLog.joins(:baby, :assistant, :activity)

  permitted_params.each do |param_key, param_value|
    if param_value.present? && Admin::ActivityLogsController::ITERABLE_KEY_PARAMS.include?(param_key)
      activity_logs = activity_logs.send("by_#{param_key}", param_value)
    end
  end

  activity_logs = activity_logs.by_status(permitted_params[:status]) if permitted_params[:status].present?

  activity_logs.select('activity_logs.*, babies.name AS baby_name, assistants.name AS assistant_name, activities.name AS activity_name')
end

def permitted_params
  params.permit(:baby_id, :assistant_id, :status)
end
