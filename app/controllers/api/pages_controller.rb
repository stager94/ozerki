class Api::PagesController < ApplicationController
	def index
		if params[:data].present?
			term = params[:data] 
			pages = Page.where("lower_title LIKE ?", "%#{term.mb_chars.downcase.to_s}%")
		else
			pages = Page.all
		end

		render json: pages
	end
end
