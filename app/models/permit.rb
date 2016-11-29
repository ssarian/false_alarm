class Permit < ActiveRecord::Base
  belongs_to :property
  has_many :alarms
  belongs_to :user
  has_many :payments
  belongs_to :status
  has_many :citations

end
