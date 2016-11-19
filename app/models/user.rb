class User < ActiveRecord::Base
  has_many :payments, :account_owners, :alarms, :citation_trans, :citations
end
