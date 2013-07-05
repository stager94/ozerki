class Api::PagesController < ApplicationController
	def index
		term = params[:data]
		pages = Page.where("lower_title LIKE ?", "%#{term.mb_chars.downcase.to_s}%")
		
		render json: pages
	end
end
