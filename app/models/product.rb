class Product < ActiveRecord::Base
  # AR classes are singular and capitalized by convention
  belongs_to :orders
  belongs_to :user
  has_many :reviews

  acts_as_votable
end