class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :private_settings, :public_settings

  def index
  	@news              = New.root
    @h1                = I18n.t 'pages.home'
    @meta_description  = @site_snippet
    @meta_keywords     = @site_keywords
  end

  public
  def public_settings
    add_breadcrumb I18n.t('pages.home', locale: :ru), :root_path
    @news_per_page = Configure.first[:news_per_page]
    @module_news_per_page= Configure.first[:module_news_per_page]
  end

  private
  def private_settings
  	@active_menu   = 'home'
    @site_snippet  = Configure.first[:site_snippet]
    @site_keywords = Configure.first[:site_keywords]
  end
end
