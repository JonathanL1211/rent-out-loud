class Product < ActiveRecord::Base
  # AR classes are singular and capitalized by convention
  has_and_belongs_to_many :orders
  belongs_to :user
  has_many :reviews
end