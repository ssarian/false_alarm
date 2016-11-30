class AccountOwner < ActiveRecord::Base
  has_many :alarms
  has_many :properties
  has_many :payments
  has_many :citations
  belongs_to :user

end
