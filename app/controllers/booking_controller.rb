class BookingController < ApplicationController
	before_filter :settings
	respond_to :html, :js

	def index
		@book = Booking.new
	end

	def create
		booking = params[:booking]

		@booking = Booking.new(booking)
		@booking.save if @booking.valid?
		MessagesMailer.book(booking).deliver
  	respond_with(@booking)
	end

	private
	def settings
		@h1 = I18n.t('pages.booking')
		add_breadcrumb I18n.t('pages.home'), root_path
		add_breadcrumb I18n.t('pages.booking'), bookings_path
	end
end
