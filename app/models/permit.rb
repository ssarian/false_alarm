class Permit < ActiveRecord::Base
  has_many :properties
  has_many :alarms
  has_many :users
  has_many :payments
end
