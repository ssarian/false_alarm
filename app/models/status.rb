class Status < ActiveRecord::Base
  has_many :citations
  has_many :alarms
end
