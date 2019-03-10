class Place < ApplicationRecord

  # table associations
  belongs_to :user
  has_many :comments
  has_many :photos

  # used to connect to our geocoder gem
  geocoded_by :address
  after_validation :geocode

  # checks that these values exist
  validates :name, presence: true, length: { minimum: 3 }
  validates :address, presence: true
  validates :description, presence: true
  
end
