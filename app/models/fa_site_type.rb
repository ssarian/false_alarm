class FaSiteType < ActiveRecord::Base
  has_many :alarms, :citations
end
