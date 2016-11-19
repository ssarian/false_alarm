class Alarm < ActiveRecord::Base
  has_many :incident_alarms
  belongs_to :account_owner, :user, :property, :fa_site_type, :status
end
