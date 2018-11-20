class Order < ActiveRecord::Base
  # AR classes are singular and capitalized by convention
  has_and_belongs_to_many :products
  belongs_to :user
end