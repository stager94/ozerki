class VideosController < ApplicationController
	before_filter :private_settings

	def index
		@videos = Video.displayed.page(params[:page]).per(10)
	end

	private
	def private_settings
		add_breadcrumb I18n.t('pages.home'), root_path
		add_breadcrumb I18n.t('pages.video'), video_index_path
		@h1 = I18n.t('pages.video')
	end
end
