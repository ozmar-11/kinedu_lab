class ActivityLog < ApplicationRecord
  ACTIVITY_LOG_STATUSES = { done: 'Termiando', in_progress: 'En progreso' }.freeze
  belongs_to :baby
  belongs_to :assistant
  belongs_to :activity

  validate :validate_stop_time
  validates :baby, :assistant, :activity, presence: true

  before_save :set_duration

  scope :by_baby_id, ->(baby_id) { where(baby_id: baby_id) }
  scope :by_assistant_id, ->(assistant_id) { where(assistant_id: assistant_id) }
  scope :finished, -> { where.not(stop_time: nil) }
  scope :in_progress, -> { where(stop_time: nil) }

  def self.by_status(status)
    status = status.to_sym

    return none unless ACTIVITY_LOG_STATUSES.keys.include?(status)

    status == :done ? finished : in_progress
  end

  def status
    set_duration

    duration.present? ? 'Terminado' : 'En progreso'
  end

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
