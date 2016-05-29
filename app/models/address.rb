class Address < ApplicationRecord
  validates :address, :zip_code, :city, :phone, :country, presence: true
end
