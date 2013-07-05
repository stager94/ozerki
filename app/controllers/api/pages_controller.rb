class Api::PagesController < ApplicationController
	def index
		if params[:data].present?
			term = params[:data] 
			pages = Page.where("lower_title LIKE ?", "%#{term.mb_chars.downcase.to_s}%").select("id, title, lower_title")
		else
			pages = Page.find(:all, select: "id, title, lower_title")
		end

		render json: pages
	end
end
