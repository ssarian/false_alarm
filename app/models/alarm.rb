class Alarm < ActiveRecord::Base
  belongs_to :status
  belongs_to :fa_site_type
  belongs_to :property
  belongs_to :account_owner
  belongs_to :user
  has_many :incident_alarms
end
