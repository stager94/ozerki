class CategoryGalleriesController < ApplicationController
	def index
		@categories = CategoryGallery.displayed
	end
end
