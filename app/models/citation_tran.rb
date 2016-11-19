class CitationTran < ActiveRecord::Base
  belongs_to :action, :citation, :notice, :user
end
