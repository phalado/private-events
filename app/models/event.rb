class Event < ApplicationRecord
  belongs_to :user, foreign_key: 'creator'
  has_many :attendance, foreign_key: 'attended_event'
  has_many :attendants, through: :attendance, source: :attendee

  scope :past, ->(current_time = DateTime.now) { where('date < ?', current_time) }
  scope :upcoming, ->(current_time = DateTime.now) { where('date >= ?', current_time) }
end
