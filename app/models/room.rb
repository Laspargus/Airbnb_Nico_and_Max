class Room < ApplicationRecord
	belongs_to :user
	belongs_to :city
	has_many :reservations
	#validates :available_beds, presence: true
	#validates :price, presence: true
	#validates :description, presence: true 
	#validates :welcome_message, presence: true
end
