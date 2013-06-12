class BookingController < ApplicationController
	before_filter :settings

	def index
		@book = Booking.new
	end

	private
	def settings
		@h1 = I18n.t('pages.booking')
		add_breadcrumb I18n.t('pages.home'), root_path
		add_breadcrumb I18n.t('pages.booking'), bookings_path
	end
end
