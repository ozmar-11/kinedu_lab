# frozen_string_literal: true

module Admin::ActivityLogsHelper
  def date_in_monterrey_timezone(datetime)
    datetime.in_time_zone('America/Monterrey')
  end

  def duration_or_empty(duration)
    duration.present? ? duration : '*'
  end
end
