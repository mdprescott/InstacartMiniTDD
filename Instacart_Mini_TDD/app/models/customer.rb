class Customer < ApplicationRecord
  validates_presence_of :name, :address, :phone_number
end
