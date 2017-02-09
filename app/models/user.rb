class User < ActiveRecord::Base
  has_many :contributions
  has_many :tales, :through => :contributions
  validates :name, :presence => true

end
