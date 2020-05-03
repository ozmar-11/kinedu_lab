class ActivityLog < ApplicationRecord
  belongs_to :baby
  belongs_to :assistant
  belongs_to :activity

  validate :validate_stop_time
  validates :baby, :assistant, :activity, presence: true

  before_save :set_duration

  scope :by_baby_id, -> (baby_id) { where(baby_id: baby_id) }

  private

  def set_duration
    self.duration = (stop_time - start_time) / 1.minute if stop_time.present? && start_time.present?
  end

  def validate_stop_time
    if start_time.present? && stop_time.present? && stop_time <= start_time
      errors.add(:stop_time, 'The activity can\'t finish before start time')
    end
  end
end
