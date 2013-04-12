class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :private_settings, :public_settings

  def index
  	@news        = New.root
    @h1          = I18n.t 'pages.home'
  end

  public
  def public_settings
    add_breadcrumb I18n.t('pages.home', locale: :ru), :root_path
    @news_per_page = Configure.first[:news_per_page]
    @module_news_per_page= Configure.first[:module_news_per_page]
  end

  private
  def private_settings
  	@active_menu = 'home'
  end
end
