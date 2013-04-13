class CategoryGalleriesController < ApplicationController
	before_filter :private_settings

	def index
		@categories = CategoryGallery.displayed
		@all_categories = CategoryGallery.main
		@h1 = I18n.t 'pages.gallery'
	end

	def show
		@category = CategoryGallery.find(params[:id])
		@all_categories = CategoryGallery.main
		@categories = @category.children
		add_breadcrumb @category.title, @category
		@h1 = @category.title
	end

	private
	def private_settings
		add_breadcrumb I18n.t 'pages.gallery', category_galleries_path
	end
end
