class Meeting < ApplicationRecord
  has_many :meeting_speakers
  has_many :speakers, through: :meeting_speakers

  validates :title, presence: true
  validates :agenda, presence: true
  validates :location, presence: true
  validates :time, presence: true
  validates_each :time do |record, attr, value|
    record.errors.add(attr, "time must be in the future") if value.to_i < Time.now.to_i
  end
end
