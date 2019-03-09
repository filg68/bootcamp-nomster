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
  validates :name, presence: true
  
end
