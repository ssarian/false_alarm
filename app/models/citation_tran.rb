class CitationTran < ActiveRecord::Base
  belongs_to :action, :notice, :user, :citation
end
