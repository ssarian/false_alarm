class Payment < ActiveRecord::Base
  belongs_to :account_owner
  belongs_to :action
  belongs_to :user
  belongs_to :permit
end
