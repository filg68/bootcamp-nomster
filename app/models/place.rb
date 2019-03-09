class Place < ApplicationRecord

  #  change
  #   create.table :place do |t|
  #     t.string :name
  #     t.text :description
  #     t.text :address
  #     t.timestamps
  #   end
  # end

  belongs_to :user

  # used to connect to our geocoder gem
  geocoded_by :address
  after_validation :geocode

  # checks that these values exist
  validates :name, presence: true, length: { minimum: 3 }
  validates :address, presence: true
  validates :description, presence: true
  
end
