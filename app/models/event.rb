class Event < ApplicationRecord
  belongs_to :user
validates :event_name, :event_date, :event_time, :event_description, :event_category, :event_address, :event_city, :event_zip, :event_age_min, :event_min_seats, :event_max_seats,  presence: true



end
