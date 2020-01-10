class User < ApplicationRecord
  has_many :events, foreign_key: 'creator'
  has_many :attendance, foreign_key: 'attendee'
  has_many :attended_event, through: :attendance
end
