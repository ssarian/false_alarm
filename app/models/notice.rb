class Notice < ActiveRecord::Base
  has_many :citation_trans
  has_many :citations
end
