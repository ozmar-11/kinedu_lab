class Api::BabiesController < Api::ApiController
  def index
    # Maybe add pagination here but would increase the scope of the exercise
    render json: BabySerializer.new(Baby.all).serialized_json
  end
end
