class AddFkReservationsGuestAdmin < ActiveRecord::Migration[5.2]
  def change
  	add_reference :reservations, :guest, index: true
  	add_reference :reservations, :admin, index: true
  	add_reference :reservations, :room, foreign_key: true
  end
end
