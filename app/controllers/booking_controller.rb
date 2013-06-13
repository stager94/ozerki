class BookingController < ApplicationController
	before_filter :settings
	respond_to :html, :js

	def index
		@book = Booking.new
		@book_days_num = Configure.first[:book_days_num]
	end

	def create
		# booking = params[:booking]
		booking = Hash.new
		booking[:name]   = params[:booking]["name"]
		booking[:email]  = params[:booking]["email"]
		booking[:phone]  = params[:booking]["phone"]
		booking[:places] = params[:booking]["places"]
		booking[:from] = params[:from]
		booking[:to] = params[:to]

		@booking = Booking.new(booking)
		@booking.save if @booking.valid?
		MessagesMailer.book(booking).deliver if @booking.valid?
  	respond_with(@booking)
	end

	private
	def settings
		@h1 = I18n.t('pages.booking')
		add_breadcrumb I18n.t('pages.home'), root_path
		add_breadcrumb I18n.t('pages.booking'), bookings_path
	end
end
