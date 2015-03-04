class Arrival < ActiveRecord::Base
  belongs_to :flight
  enum status: [:on_time, :delayed, :landing, :landed]
  
end
