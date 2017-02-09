class Tale < ActiveRecord::Base
  has_many :contributions
  has_many :accounts, :through => :contributions
  validates :title, :presence => true

end
