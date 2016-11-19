class IncidentAlarm < ActiveRecord::Base
  has_many :citations
  belongs_to :incident, :alarm
end
