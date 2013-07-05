# coding: utf-8
class Api::NewsController < ApplicationController
	def index
		if params[:data].present?
			term = params[:data]
			news = New.where("LOWER(lower_title) LIKE ?", "%#{term.mb_chars.downcase.to_s}%").select("id, title, lower_title")
		else
			news = New.find(:all, select: "id, title, lower_title")
		end

		render json: news
	end
end
