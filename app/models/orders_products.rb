class OrdersProducts < ActiveRecord::Base
  # AR classes are singular and capitalized by convention
  belongs_to :product
  belongs_to :order
end