class Episode < ApplicationRecord
  include CalculatesDuration
  belongs_to :series, optional: true

  serialize :duration, DurationCoder
  updates_duration_of :series
end
