class Product < ActiveRecord::Base
  # AR classes are singular and capitalized by convention
  has_and_belongs_to_many :orders, dependent: :destroy
  belongs_to :user
  has_many :reviews
  has_many :comments

  acts_as_votable

  geocoded_by :meetup_location  # can also be an IP address
  after_validation :geocode  # auto-fetch coordinates
end