class AccountOwner < ActiveRecord::Base
  has_many :payments, :alarms, :properties, :citations
  belongs_to :user
end
