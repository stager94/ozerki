class CategoryGalleriesController < ApplicationController
	before_filter :private_settings
	before_filter :get_category, only: [:show]
	before_filter :set_breadcrumb_tree, only: [:show]

	def index
		@categories = CategoryGallery.displayed

		@h1 = I18n.t 'pages.gallery'
	end

	def show
		@photos = Gallery.where('category_gallery_id = ?', @category)

		@meta_description = @category.snippet
		@meta_keywords    = @category.keywords
		@h1 = @category.title
	end

	private
	def private_settings
		add_breadcrumb I18n.t('pages.home'), root_path
		add_breadcrumb I18n.t('pages.gallery'), :category_galleries_path
		@all_categories = CategoryGallery.main
	end

	def get_category
		@category = CategoryGallery.find(params[:id])
		@categories = @category.children
	end

	def set_breadcrumb_tree
		@category.self_and_ancestors.each do |category|
			add_breadcrumb category.title, category_gallery_path(category)
		end
	end
end
