class Api::NewsController < ApplicationController
	def index
		news = New.all
		count = New.count
		render json: {count: count, news: news}
	end
end
