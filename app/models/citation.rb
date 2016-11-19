class Citation < ActiveRecord::Base
  has_many :citation_transactions
  belongs_to :account_owner, :property, :fa_site_type, :status, :user, :incident_alarm
end
