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
			address_hash = Hash.new

			address.first.address_components.each do |ad|
				address_hash["#{ad['types'][0]}"] = ad
			end


			array[1] = address_hash['country']['long_name'] unless address_hash['country'].blank?
			# array[0] = address_hash['sublocality']['long_name'] unless address_hash['sublocality'].blank?
			array[0] = address_hash['locality']['long_name'] unless address_hash['locality'].blank?

			# if address_hash['sublocality'].blank? && !address_hash['administrative_area_level_2'].blank?
			# 	array[0] = address_hash['administrative_area_level_2']['long_name']
			# end
			
			if address_hash['locality'].blank? && !address_hash['administrative_area_level_1'].blank?
				array[0] = address_hash['administrative_area_level_1']['long_name']
			end


			result = array.join(', ')
		end

		result
	end
end
