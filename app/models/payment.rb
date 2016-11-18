class Payment < ActiveRecord::Base
  belongs_to :account_owner, :action, :user
end
