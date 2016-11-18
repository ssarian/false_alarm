class Property < ActiveRecord::Base
  has_many :alarms, :ciations
  belongs_to :account_owner
end
