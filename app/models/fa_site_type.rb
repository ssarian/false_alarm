class FaSiteType < ActiveRecord::Base
  has_many :alarms
  has_many :citations
end
