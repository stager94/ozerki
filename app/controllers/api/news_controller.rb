# coding: utf-8
class Api::NewsController < ApplicationController
	def index
		term = params[:data]
		news = New.where("LOWER(lower_title) LIKE ?", "%#{term.mb_chars.downcase.to_s}%")

		render json: news
	end
end
