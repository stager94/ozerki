class TestimonalsController < ApplicationController
	before_filter :private_settings
	respond_to :html, :js

	def index
		@testimonals = Testimonal.displayed.page(params[:page]).per(5)
		@testimonal = Testimonal.new
		# binding.pry
		@geoposition = get_address_text Geocoder.search([request.location.latitude,request.location.longitude])
		# @geoposition = get_address_text Geocoder.search([50.4333,30.5167])
	end

	def create
		testimonal = params[:testimonal]
		testimonal[:display] = false

		@testimonal = Testimonal.new(testimonal)
		@testimonal.save if @testimonal.valid?

  		respond_with(@testimonal)
	end

	private
	def private_settings
		@h1 = I18n.t 'pages.testimonals'
		add_breadcrumb I18n.t('pages.home'), root_path
		add_breadcrumb I18n.t('pages.testimonals'), testimonals_path
	end


	def get_address_text(address)
		array = Array.new

		result = request.location.country
		result = result
		
		unless address.blank?
			country = address.first.address_components.select {|u| u["types"][0] == 'country'}
			locality = address.first.address_components.select {|u| u["types"][0] == 'locality'}
			sublocality = address.first.address_components.select {|u| u["types"][0] == 'sublocality'}

			array[2] = country[0]['long_name'] unless country.blank?
			array[1] = locality[0]['long_name'] unless locality.blank?
			array[0] = sublocality[0]['long_name'] unless sublocality.blank?

			# array[0] = address.first.address_components[1]['long_name'] unless address.first.address_components[3]['long_name'].blank?
			# array[1] = address.first.address_components[2]['long_name'] unless address.first.address_components[3]['long_name'].blank?
			# array[2] = address.first.address_components[3]['long_name'] unless address.first.address_components[3]['long_name'].blank?

			result = array.join(', ')
		end

		result
	end
end
