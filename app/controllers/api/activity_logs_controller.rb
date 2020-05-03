class Api::ActivityLogsController < Api::ApiController
  def index
    baby_id = params[:baby_id]
    if baby_id.present?
      render json: ActivityLogWithAssistentNameSerializer.new(ActivityLog.by_baby_id(baby_id), is_collection: true).serialized_json
    else
      render json: []
    end
  end

  def create
    new_activity_log = ActivityLog.create(permitted_params)
    if new_activity_log.save
      render json: ActivityLogSerializer.new(new_activity_log, is_collection: false).serialized_json, status: :created
    else
      render json: new_activity_log.errors.messages.as_json, status: :unprocessable_entity
    end
  end

  def update
    activity_log = ActivityLog.find_by(id: params[:id])

    if !activity_log.present?
      render json: { error: 'Item not found' }, status: 404
    elsif activity_log.update(permitted_params)
      render json: ActivityLogSerializer.new(activity_log, is_collection: false).serialized_json
    else
      render json: activity_log.error.messages, status: :unprocessable_entity
    end
  end

  private

  def permitted_params
    params
      .require(:activity_log)
      .permit(
    :id,
          :start_time,
          :stop_time,
          :comments,
          :baby_id,
          :assistant_id,
          :activity_id
      )
  end
end
