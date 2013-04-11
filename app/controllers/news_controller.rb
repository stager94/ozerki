class NewsController < ApplicationController
	before_filter :find_new, only: [:show]
	before_filter :settings
	def index
		@news = New.displayed
	end

	def show
		@meta_description  = @new.snippet
		@meta_keywords     = @new.tag_list
		@meta_author       = @new.author
	end

	protected
	def find_new
		@new = New.find(params[:id])
	end

	def settings
		@active_menu = 'news'
	end

end