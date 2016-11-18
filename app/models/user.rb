class User < ActiveRecord::Base
  has_many :citations, :citation_trans, :payments, :account_owners, :alarms, :users
end
