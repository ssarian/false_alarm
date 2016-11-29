class Action < ActiveRecord::Base
  has_many :payments
  has_many :citation_trans
end
