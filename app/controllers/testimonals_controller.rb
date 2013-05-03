class TestimonalsController < ApplicationController
	before_filter :private_settings
	respond_to :html, :js

	def index
		@testimonals = Testimonal.displayed.page(params[:page]).per(5)
		@testimonal = Testimonal.new
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
end
