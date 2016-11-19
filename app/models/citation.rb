class Citation < ActiveRecord::Base
  has_many :citation_trans
  belongs_to :user, :incident_alarm, :account_owner, :property, :fa_site_type, :status
end
