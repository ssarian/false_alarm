class CitationTran < ActiveRecord::Base
  belongs_to :action
  belongs_to :notice
  belongs_to :user
  belongs_to :citation
end
