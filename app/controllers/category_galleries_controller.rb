class CategoryGalleriesController < ApplicationController
	def index
		@categories = CategoryGallery.displayed
		@all_categories = CategoryGallery.main
	end
end
