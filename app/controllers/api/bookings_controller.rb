class Api::BookingsController < ApplicationController
	def index
		result = Booking.all.count
		render json: [count: result]
	end

	def list
		result = nil
		if params[:token].present? && params[:token] == 'secret'
			result = Booking.all
		end
		render json: result
	end
end
