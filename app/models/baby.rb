class Baby < ApplicationRecord
  has_many :activity_logs

  def age_in_months
    today = Time.current

    (today.year * 12 + today.month) - (birthday.year * 12 + birthday.month)
  end
end
