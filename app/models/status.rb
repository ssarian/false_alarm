class Status < ActiveRecord::Base
  has_many :citations
  belongs_to :alarms
end
