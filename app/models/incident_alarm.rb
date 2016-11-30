class IncidentAlarm < ActiveRecord::Base
  belongs_to :incident
  belongs_to :alarm
  has_many :citations
end
