class Reservation < ApplicationRecord
<<<<<<< HEAD
	
@@reservations = []
=======
>>>>>>> 076609e7a3afb23e72d6ee6bdab419a3434f93dd

	belongs_to :room

	belongs_to :admin, class_name: "User"
	belongs_to :guest, class_name: "User"

	#validates :start_date, :presence => {:message => "must be a valid date/time" }
  	#validates :end_date, :presence => {:message => "must be a valid date/time"}
	#validate :start_must_be_before_end_time
	#validate :overlap

	  def start_must_be_before_end_time
	    errors.add(:start_date, "must be beforehihihi end time") unless
	       start_date < end_date
	  end

<<<<<<< HEAD

	  def initialize(id)
	  	@@reservations << self
	  	puts @@reservations
	  end


	  def self.overlap
	  	
	  	
	  	puts self.first
	  	puts self.first.start_date

	  	@@reservations.each do |reservation|
	  		puts reservation.start_date
	  	end 
	  end

end
=======
end
>>>>>>> 076609e7a3afb23e72d6ee6bdab419a3434f93dd
