class Incident < ActiveRecord::Base
  has_many :incident_alarms
end
