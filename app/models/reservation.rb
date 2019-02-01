class Reservation < ApplicationRecord
	belongs_to :room
	belongs_to :admin, class_name: "User"
	belongs_to :guest, class_name: "User"

	validates :start_date, :presence => {:message => "must be a valid date/time" }
  	validates :end_date, :presence => {:message => "must be a valid date/time"}
	validate :start_must_be_before_end_time
	validate :overlap

	  def start_must_be_before_end_time
	    errors.add(:start_date, "must be beforehihihi end time") unless
	       start_date < end_date
	  end

	  def overlap
	  	Self.each do |reservation|
	  		if reservation.room == room
	  		end_date < reservation.start_date
	  		end
	  	end
	  end

end
