class Status < ActiveRecord::Base
  has_many :alarms, :citations
end
