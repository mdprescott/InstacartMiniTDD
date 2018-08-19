class Warehouse < ApplicationRecord
  validates_presence_of :name, :address
end
