class Order < ActiveRecord::Base
  # AR classes are singular and capitalized by convention
  has_many :products, dependent: :destroy
  belongs_to :user
end