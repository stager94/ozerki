class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :private_settings, :public_settings

  def index
    add_breadcrumb I18n.t('pages.home'), root_path
  	@news              = New.root
    @h1                = I18n.t 'pages.home'
    @meta_description  = @config[:site_snippet]
    @meta_keywords     = @config[:site_keywords]

    render layout: "index"
  end

  public
  def public_settings
    # @news_per_page = Configure.first[:news_per_page]
    # @module_news_per_page= Configure.first[:module_news_per_page]

    @config = Configure.first
    @meta_description  = @config[:site_snippet]
    @meta_keywords     = @config[:site_keywords]
  end

  private
  def private_settings
  	@active_menu   = 'home'
  end
end
