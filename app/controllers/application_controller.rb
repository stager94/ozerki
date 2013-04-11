class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :settings

  def index
  	@news = New.root
  	@active_menu = 'home'
  end

  private
  def settings
  	@active_menu = 'home'
  end
end
