class Api::BookingsController < ApplicationController
	def index
		result = Booking.all.count
		render json: result
	end
end
