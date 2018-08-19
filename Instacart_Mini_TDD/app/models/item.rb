class Item < ApplicationRecord
  belongs_to :warehouse
  validates_presence_of :description, :price
  validates_inclusion_of :looseweight, in: [true, false]
end
