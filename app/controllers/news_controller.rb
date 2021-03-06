class NewsController < ApplicationController
	before_filter :find_new, only: [:show]
	before_filter :settings, except: [:feed]

	def index
		@news   = New.displayed.where(category_new_id: @category_id).page(params[:page]).per(@config[:news_per_page])
		@h1			= @category.title
		
		@meta_description  = @category.snippet
		@meta_keywords     = @category.keywords
	end

	def show
		@meta_description  = @new.snippet
		@meta_keywords     = @new.tag_list
		@meta_author       = @new.author
		@h1    			 			 = @new.title
		
		add_breadcrumb @new.title, category_news_news_index_path(@category_id, @new)
		@news = New.displayed.where(category_new_id: @category_id)
	end

	private
	def find_new
		@new = New.find(params[:id])
	end

	def settings
		@category_id = params[:category_news_id]
		@category = CategoryNew.find(@category_id)
		add_breadcrumb I18n.t('pages.home'), root_path
		add_breadcrumb @category.title, category_news_news_index_path(params[:category_news_id])
		@active_menu = 'news'
	end
end