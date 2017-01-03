class Saver < ApplicationRecord
	validates :gas, :kwh, presence: true
	belongs_to :user
	geocoded_by :address 
  after_validation :geocode
end
