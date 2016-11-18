class Action < ActiveRecord::Base
  has_many :payments, :citation_trans
end
