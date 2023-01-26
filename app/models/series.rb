class Series < ApplicationRecord
  include CalculatesDuration
  has_many :episodes

  serialize :duration, DurationCoder
  calculates_duration_from :episodes
end
