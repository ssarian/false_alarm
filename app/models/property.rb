class Property < ActiveRecord::Base
  has_many :alarms
  has_many :citations
  belongs_to :account_owner
  has_many :permits
  validates :propertyName, format: { with: /\A[a-zA-Z0-9]+\Z/ },format: { with: /\s/},  :presence => true
  validates :address, :presence => true
  validates :city, format: { with: /\A[a-zA-Z]+\z/}, :presence => true
  validates :state, format: { with: /\A[a-zA-Z]+\z/}, length: { maximum: 2, minimum: 2}, :presence => true
  validates :zip, numericality: true, length: {maximum:5, minimum: 5}, :presence => true


  def Name
    "#{id} #{propertyName}".strip
  end
end
