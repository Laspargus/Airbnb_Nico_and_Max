class City < ApplicationRecord
	has_many :rooms
	#validates :zip_code, uniqueness: true,  format: { with: /\A(([0-8][0-9])|(9[0-5])|(2[ab]))[0-9]{3}\z/, message: "please enter a valid french zip code" }
	#validates :name, presence: true,
end
