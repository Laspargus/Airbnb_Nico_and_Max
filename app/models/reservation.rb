class Reservation < ApplicationRecord
	has_many :rooms
	belongs_to :admin, class_name: "User"
	belongs_to :guest, class_name: "User"
end