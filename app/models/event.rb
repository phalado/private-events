class Event < ApplicationRecord
  belongs_to :user, foreign_key: "creator"
  has_many :attendance, foreign_key: "attended_event"
  has_many :attendants, through: :attendance, source: :attendee
  
  scope :past, -> {where('date < ?', current_time = DateTime.now)}
  scope :upcoming, -> {where('date >= ?', current_time = DateTime.now)}
end
