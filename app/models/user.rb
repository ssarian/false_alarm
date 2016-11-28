class User < ActiveRecord::Base
  has_many :citations
  has_many :citation_trans
  has_many :payments
  has_many :account_owners
  has_many :alarms
  has_many :users
end
