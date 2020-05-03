class Api::ActivitiesController < Api::ApiController
  def index
    # Maybe add pagination here but would increase the scope of the exercise
    render json: ActivitySerializer.new(Activity.all, is_collection: true).serialized_json
  end
end
