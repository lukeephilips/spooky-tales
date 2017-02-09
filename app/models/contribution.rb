class Contribution < ActiveRecord::Base
  belongs_to :account
  belongs_to :tale
  validates :text, :presence => true
  validates :text, :uniqueness => true
end
