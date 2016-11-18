class Alarm < ActiveRecord::Base
  belongs_to :status, :fa_site_type, :property, :account_owner, :user
  has_many :incident_alarms
end
