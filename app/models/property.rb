class Property < ActiveRecord::Base
  has_many :alarms, :citations
  belongs_to :account_owner
end
