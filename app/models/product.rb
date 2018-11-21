class Product < ActiveRecord::Base
  # AR classes are singular and capitalized by convention
  has_and_belongs_to_many :orders, dependent: :destroy
  belongs_to :user
  has_many :reviews
  has_many :comments

  acts_as_votable
end