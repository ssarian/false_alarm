class Payment < ActiveRecord::Base
  belongs_to :action, :user, :account_owner
end
