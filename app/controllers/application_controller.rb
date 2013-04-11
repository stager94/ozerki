class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :settings
  add_breadcrumb I18n.t('pages.home'), :root_path

  def index
  	@news        = New.root
    @h1          = I18n.t 'pages.home' 
  end

  private
  def settings
  	@active_menu = 'home'
  end
end
