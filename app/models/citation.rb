class Citation < ActiveRecord::Base
  has_many :citation_transactions
  belongs_to :account_owner
  belongs_to :property
  belongs_to :fa_site_type
  belongs_to :status
  belongs_to :user
  belongs_to :incident_alarm
  has_many :notices
  belongs_to :status
end
