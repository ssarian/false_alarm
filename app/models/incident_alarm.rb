class IncidentAlarm < ActiveRecord::Base
  belongs_to :incident, :alarm
  has_many :citations
end
