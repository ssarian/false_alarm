class Status < ActiveRecord::Base
  has_many :citations, :alarms
end
