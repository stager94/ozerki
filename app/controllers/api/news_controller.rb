# coding: utf-8
class Api::NewsController < ApplicationController
	def index
		if params[:data].present?
			term = params[:data]
			news = New.where("LOWER(lower_title) LIKE ?", "%#{term.mb_chars.downcase.to_s}%")
		else
			news = New.all
		end

		render json: news
	end
end
