class Incident < ActiveRecord::Base
  has_many :incident_alarms
  validates :incidentNum, :presence => true
  validates :incidentDateTime, :presence => true
  validates :permitNum, :presence => true
  validates :address, :presence => true
            validates :city, format: { with: /\A[a-zA-Z]+\z/}, :presence => true
            validates :state, format: { with: /\A[a-zA-Z]+\z/}, length: { maximum: 2, minimum: 2}, :presence => true
  validates :zip, numericality: true, length: {maximum:5, minimum: 5}, :presence => true
end



