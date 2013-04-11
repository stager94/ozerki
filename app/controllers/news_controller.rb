class NewsController < ApplicationController
	before_filter :find_new, only: [:show]
	before_filter :settings
	add_breadcrumb I18n.t('pages.news'), :news_index_path

	def index
		@news   = New.displayed
		@h1     = t('pages.news')
	end

	def show
		@meta_description  = @new.snippet
		@meta_keywords     = @new.tag_list
		@meta_author       = @new.author
		add_breadcrumb @new.title, news_path(@new)
	end

	protected
	def find_new
		@new = New.find(params[:id])
	end

	def settings
		@active_menu = 'news'
	end

end