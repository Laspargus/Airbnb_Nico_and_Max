class User < ApplicationRecord
	has_many :booked_rooms, foreign_key: "guest_id", class_name: "Reservation" 
	has_many :saled_rooms, foreign_key: "admin_id", class_name: "Reservation" 
	has_many :rooms
end
