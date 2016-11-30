class Saver < ApplicationRecord
	validates :gas, presence: true
	validates :kwh, presence: true
	belongs_to :user
end
