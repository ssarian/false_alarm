class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :citations
  has_many :citation_trans
  has_many :payments
  has_many :account_owners
  has_many :alarms
  has_many :users
  has_many :permits
end
