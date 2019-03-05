class Place < ApplicationRecord

  def change
    create.table :place do |t|
      t.string :name
      t.text :description
      t.text :address
      t.timestamps
    end
  end
  
end
