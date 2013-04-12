class PagesController < ApplicationController
	before_filter :find_page, :settings

	def show
		
	end

	public
	def find_page
		@page = Page.find(params[:id])
	end

	def settings
		@h1 = @page.title
		add_breadcrumb @page.title, page_path(@page)

		@meta_description = @page.snippet
		@meta_keywords = @page.keywords
	end
end
