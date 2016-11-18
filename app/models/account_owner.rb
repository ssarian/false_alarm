class AccountOwner < ActiveRecord::Base
  has_many :alarms, :properties, :payments, :citations
  belongs_to :user
end
