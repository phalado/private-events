class Attendance < ApplicationRecord
  belongs_to :user, foreign_key: 'attendee'
  belongs_to :event, foreign_key: 'attended_event'
end
